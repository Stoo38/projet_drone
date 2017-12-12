//==============================================================================
//   SystemVerilog Image Utilities (Structure/Read/Write/..)
//   Copyright (C) 2017  Sylvain ENGELS
//
//   This program is free software: you can redistribute it and/or modify
//   it under the terms of the GNU General Public License as published by
//   the Free Software Foundation, either version 3 of the License, or
//   (at your option) any later version.
//
//   This program is distributed in the hope that it will be useful,
//   but WITHOUT ANY WARRANTY; without even the implied warranty of
//   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//   GNU General Public License for more details.
//
//   You should have received a copy of the GNU General Public License
//   along with this program.  If not, see <http://www.gnu.org/licenses/>.
//==============================================================================
`ifndef INP_IMG_UTILS_SV
`define INP_IMG_UTILS_SV

//------------------------------------------------------------------------------
typedef logic [31:0] uint32_t;
typedef logic [15:0] uint16_t;
typedef logic  [7:0] uint8_t;


// Image is define as an associative 2D array of pixel element
// eg : pixel_t img_array [int][int];
typedef struct {
  uint8_t r;
  uint8_t g;
  uint8_t b;
} pixel_t;

// https://en.wikipedia.org/wiki/BMP_file_format

// Windows BITMAPINFOHEADER[1]
typedef struct packed unsigned {
   uint32_t size_imhead; // the size of this header (40 bytes)
   uint32_t width;       // the bitmap width in pixels (signed integer)
   uint32_t height;      // the bitmap height in pixels (signed integer)
   uint16_t nbplans;     // the number of color planes (must be 1)
   uint16_t bpp;         // the number of bits per pixel, which is the color depth of the image. Typical values are 1, 4, 8, 16, 24 and 32.
   uint32_t compression; // the compression method being used. See the next table for a list of possible values
   uint32_t img_size;    // the image size. This is the size of the raw bitmap data; a dummy 0 can be given for BI_RGB bitmaps.
   uint32_t hres;        // the horizontal resolution of the image. (pixel per meter, signed integer)
   uint32_t vres;        // the vertical resolution of the image. (pixel per meter, signed integer)
   uint32_t cpalette;    // the number of colors in the color palette, or 0 to default to 2n
   uint32_t cIpalette;   // the number of important colors used, or 0 when every color is important; generally ignored
} BPI_head_t;

typedef struct packed unsigned {
	uint16_t   header;   // The header field used to identify the BMP and DIB file is 0x42 0x4D in hexadecimal, same as BM in ASCII.
	uint32_t   size;     // The size of the BMP file in bytes
	uint32_t   reserved; // Reserved; actual value depends on the application that creates the image ( 2 * 16bit field)
	uint32_t   offset;   // The offset, i.e. starting address, of the byte where the bitmap image data (pixel array) can be found.
	BPI_head_t imhead;
} BMP_head_t;


class binutils #(int unsigned width = 1);

  static task fread(output [width-1:0] array, ref int fp);
    integer r;
    logic [width-1:0] array_r; // Array read by fread
    r = $fread(array_r, fp);
    for (int i=0; i<width/8; i++) array[8*i +: 8] =  array_r[8*(width/8-i-1) +: 8]; // Swap byte to respect endianess
  endtask

endclass


//------------------------------------------------------------------------------
// This Task Read file in BMP format (Windows like) ane return image array
//------------------------------------------------------------------------------
task  automatic read_bmp (ref pixel_t image[int][int], input string filename);
  int        fp;                         // Output File Pointer
  BMP_head_t bmp;                        // Header for BMP file
  uint8_t    padding[4] = {0,3,2,1};     // Allows to easyly compute missing number of byte per line
  uint8_t    dummy;                      // Used for pixel dummy read
  
  // Open File
  fp = $fopen(filename, "rb") ;//must be binary read mode
  if (!fp) begin
    $display("<BMP> Open error during file reading !\n");
    $finish;
  end
  $display("<BMP> Reading Image from %s\n", filename);
  
  // Read Header Informations
  binutils #(16)::fread(bmp.header,fp);
  binutils #(32)::fread(bmp.size,fp);
  binutils #(32)::fread(bmp.reserved,fp);
  binutils #(32)::fread(bmp.offset,fp);

  // Read BPI Informations
  binutils #(32)::fread(bmp.imhead.size_imhead,fp);
  binutils #(32)::fread(bmp.imhead.width,fp);
  binutils #(32)::fread(bmp.imhead.height,fp);
  binutils #(16)::fread(bmp.imhead.nbplans,fp);
  binutils #(16)::fread(bmp.imhead.bpp,fp);
  // Only 24-bit color mode is supported
  if (bmp.imhead.bpp !=24) begin
         $display("Sorry, Only 24-bit color is supported in this program. Found=%d",bmp.imhead.bpp);
         $finish;
  end
  binutils #(32)::fread(bmp.imhead.compression,fp);
  binutils #(32)::fread(bmp.imhead.img_size,fp);
  binutils #(32)::fread(bmp.imhead.hres,fp);
  binutils #(32)::fread(bmp.imhead.vres,fp);
  binutils #(32)::fread(bmp.imhead.cpalette,fp);
  binutils #(32)::fread(bmp.imhead.cIpalette,fp);

  // Read RGB Data
  for (int y=bmp.imhead.height-1; y >= 0; y--) begin
    for (int x=0; x < bmp.imhead.width; x++) begin
      binutils #(8)::fread(image[x][y].b,fp);
      binutils #(8)::fread(image[x][y].g,fp);
      binutils #(8)::fread(image[x][y].r,fp);
    end
    /// We need to read dummy data to respect BMPpadding (aka pitch)
    for (int l=0; l<padding[(3*bmp.imhead.width)%4]; l++) binutils #(8)::fread(dummy,fp);
  end
  $fclose(fp);

  //$display("bmp is %p",bmp);

endtask

//------------------------------------------------------------------------------
// This Task Write image array in BMP format (Windows like)
//------------------------------------------------------------------------------
 task  automatic write_bmp (ref pixel_t image[int][int], input string filename);
  int        fp;                         // Output File Pointer
  BMP_head_t bmp;                        // Header for BMP file
  int        width  = image.num();       // Width of input picture
  int        height = image[0].num();    // Height of input picture (Use first line to compute height)
  uint8_t    padding[4] = {0,3,2,1};     // Allows to easyly compute missing number of byte per line

  // Header BPI Init
  bmp.imhead.size_imhead = 40;
  bmp.imhead.width       = width;
  bmp.imhead.height      = height;
  bmp.imhead.nbplans     = 1;                                                  // (Must be one)
  bmp.imhead.bpp         = 24;                                                 // 1 octet per color --> 24 bits
  bmp.imhead.compression = 0;                                                  // No compression
  bmp.imhead.img_size    = 3*height*width + height*padding[(3*width)%4];       // Apply pitch correction per line
  bmp.imhead.hres        = 0;                                                  //
  bmp.imhead.vres        = 0;                                                  //
  bmp.imhead.cpalette    = 0;                                                  // No palette for 24bit image
  bmp.imhead.cIpalette   = 0;                                                  // No palette for 24bit image

  // Header Init
  bmp.header    = "BM"; // Header Magic Number for Windows
  bmp.reserved  = 0;
  bmp.size      = $bits(bmp)/8 + bmp.imhead.img_size; // Compute BMP File Size
  bmp.offset    = $bits(bmp)/8;                       // We start image juste after the header


  // Write BMP FIle
  fp = $fopen(filename, "wb");
  //$display("Size of BMP is %d = %d + %d",bmp.size,bmp.offset,bmp.imhead.img_size);
  // Write File Header
  $fwrite(fp, "%s", bmp.header);
  $fwrite(fp, "%u", bmp.size);
  $fwrite(fp, "%u", bmp.reserved);
  $fwrite(fp, "%u", bmp.offset);
  // Write DIB Header
  $fwrite(fp, "%u", bmp.imhead.size_imhead);
  $fwrite(fp, "%u", bmp.imhead.width);
  $fwrite(fp, "%u", bmp.imhead.height);
  $fwrite(fp, "%u", {bmp.imhead.bpp,bmp.imhead.nbplans});
  $fwrite(fp, "%u", bmp.imhead.compression);
  $fwrite(fp, "%u", bmp.imhead.img_size);
  $fwrite(fp, "%u", bmp.imhead.hres);
  $fwrite(fp, "%u", bmp.imhead.vres);
  $fwrite(fp, "%u", bmp.imhead.cpalette);
  $fwrite(fp, "%u", bmp.imhead.cIpalette);

  // Write Image file Data (pixel are stored left->right BUT BOTTOM->TOP
  for (int y=height-1; y >= 0; y--) begin
    for (int x=0; x < width; x++) begin
        // Store is done in Blue-Green-Red Order
        $fwrite(fp,"%c",image[x][y].b); 
        $fwrite(fp,"%c",image[x][y].g); 
        $fwrite(fp,"%c",image[x][y].r); 
    end
    /// WE NEED TO ADD PADDING (aka pitch)
    for (int l=0; l<padding[(3*width)%4]; l++)  begin
       $fwrite(fp,"%c",'h00); 
    end

  end

  $fclose(fp);
endtask

`endif //  `ifndef INP_IMG_UTILS_SV
