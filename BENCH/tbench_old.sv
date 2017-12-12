// This testbench used an image stored in array and produce a VGA stream

`include "/tp/xph3app/xph3app602/projet_drone/VHD/HEADERS/img_utils.svh"

module tbench ();

bit reset     = 1'b0;


bit         vga_clk   = 1'b0;// Pixel clock set as 25Mhz
bit         vga_clk2x = 1'b0;// 50Mhz for GeneSync block
logic [9:0] vga_x;         // X position of pixel
logic [8:0] vga_y;         // Y position of pixel
logic       vga_hsync;     // Horizontal Synchro (before every line)
logic       vga_vsync;     // Vertical Synchro (New image on screen)
logic       vga_img;       // img permet de couper r/g/b quand on est hors de l'ecran (back and front porch)

logic [9:0] cam_x;         // X position of pixel in camera
logic [8:0] cam_y;         // Y position of pixel in camera
logic r     ;
logic g     ;
logic b     ;
logic r_out ;
logic g_out ;
logic b_out ;


// VGA screen is 640x480
// Image Array
pixel_t img_camera [int][int]; // Camera Output is 512x512
//pixel_t img_camera [512][512]; // Camera Output is 512x512
pixel_t img_out; // Pixel output after processing
//pixel_t img_barycentre;
pixel_t img_vga    [int][int]; // VGA screen is 640x480
//pixel_t img_vga_2    [int][int]; // VGA screen is 640x480

// Initialise all array to black
initial begin
  for (int y=0; y < 480; y++) begin
    for (int x=0; x < 640; x++) begin
      img_vga[x][y].b = 0;
      img_vga[x][y].g = 0;
      img_vga[x][y].r = 0;
      /*img_vga_2[x][y].b = 0;
      img_vga_2[x][y].g = 0;
      img_vga_2[x][y].r = 0;*/
    end
  end
end
initial begin
  for (int y=0; y < 512; y++) begin
    for (int x=0; x < 512; x++) begin
      img_camera[x][y].b = 0;
      img_camera[x][y].g = 0;
      img_camera[x][y].r = 0;
    end
  end
end

// Le composant vga_sync est un bloc qui génère les signaux HSYNC et VSYNC conformément à
// la norme VGA (pour une résolution de 640x480 pixels). Le signal IMG est à 1 uniquement
// lorsque le canon à électrons est dans une zone visible de l'image. Si IMG est à 0, alors
// les signaux R, G et B doivent obligatoirement être à 0 aussi. Les signaux X et Y désignent
// les coordonnées du pixel de couleurs R, G et B à l'instant considéré.
/*
vga_sync u_vga_sync (
  .clk   (vga_clk),     // VGA clock (must be set at 25Mhz)
  .rst_n (reset),       // Active Low Reset
  .hsync (vga_hsync),   // VGA Horizontal Synchronisation
  .vsync (vga_vsync),   // VGA Vertical Synchronisation
  .pos_x (vga_x),       // X position of on pixel in the vga screen
  .pos_y (vga_y),       // Y position of on pixel in the vga screen
  .img   (vga_img)      // High when we are inside VGA scree (not in porch of sync area)
);


assign cam_x   = (vga_x > 128 && vga_x < 640) ?  vga_x - 128 : 0; // 128 = 640 (vga) - 512 (camera)
assign cam_y   =                                 vga_y;           // same Y as 512 (canera)  > 480 (vga)

assign cam_img = (vga_x > 128) && vga_img;         // Force vga pixel out of camera to 0
*/
gensync u_gsync (
  .CLK          (vga_clk),
  .reset        (reset),
  .HSYNC        (vga_hsync),
  .VSYNC        (vga_vsync),
  .IMG          (vga_img),
  .IMGY_out     (),
  .X            (cam_x),
  .Y            (cam_y)
);
assign vga_x   = (cam_x < 640) ? cam_x + 128: 0;
assign vga_y   = cam_y;
assign cam_img = vga_img;

// We analyze and process image send to VGA screen
// Another possibilite should be to analyse picture coming from camera
image_process duv (
  .reset   (reset),

  .VGA_CLK (vga_clk),
  .IMG     (cam_img),  // 1 when we are inside
  .VGA_HS  (vga_hsync),
  .VGA_VS  (vga_vsync),
  .SW1     (1'b1),// Met l'image en noir et blanc

  // Position of Pixel within Camera Array
  // For the time being, we re-use screen position --> image will be truncated
  .X_Cont  (cam_x[8:0]), // truncation done on MSB
  .Y_Cont  (cam_y[8:0]), // image 512 x 512  

  // Pixel luminescance value coming from DRPAM (~ Camera)
  .r       (img_camera[cam_x][cam_y].r), // Input Red Pixel
  .g       (img_camera[cam_x][cam_y].g), // Input Green Pixel
  .b       (img_camera[cam_x][cam_y].b), // Input Blue Pixel

  .r_out   (img_out.r),
  .g_out   (img_out.g),
  .b_out   (img_out.b)

);


//port map de position

/*position bartcentre (
  .n_reset   (reset),

  .VGA_CLK (vga_clk),

  // Position of Pixel within Camera Array
  // For the time being, we re-use screen position --> image will be truncated
  .X_Cont  (cam_x[8:0]), // truncation done on MSB
  .Y_Cont  (cam_y[8:0]), // image 512 x 512  

  // Pixel luminescance value coming from DRPAM (~ Camera)
  .r       (img_out.r), // Input Red Pixel
  .g       (img_out.g), // Input Green Pixel
  .b       (img_out.b), // Input Blue Pixel

  .r_out   (img_barycentre.r),
  .g_out   (img_barycentre.g),
  .b_out   (img_barycentre.b)

);*/

// Re-use Hsync and Vsync to re-build pixel array


always @(posedge vga_clk) 
  //if ((cam_x < 640) && (cam_y < 480))
  begin
    img_vga[vga_x][vga_y].r = img_out.r & {8{cam_img}};
    img_vga[vga_x][vga_y].g = img_out.g & {8{cam_img}};
    img_vga[vga_x][vga_y].b = img_out.b & {8{cam_img}};
    /*img_vga_2[vga_x][vga_y].r = img_barycentre.r & {8{cam_img}}; 
    img_vga_2[vga_x][vga_y].g = img_barycentre.g & {8{cam_img}};
    img_vga_2[vga_x][vga_y].b = img_barycentre.b & {8{cam_img}};*/ 
  end

initial begin
  #103  reset      = 1'b1;
end

// Set Pixel Clock @ 25Mhz --> 40ns
always #20 vga_clk   <= ~vga_clk;
always #10 vga_clk2x <= ~vga_clk2x;

// Read Image From File
initial begin
  read_bmp(img_camera,"/tp/xph3app/xph3app602/projet_drone/IMG/dronelourd.bmp");//selection image
end

// Write image
initial begin
  @(posedge reset);
  @(posedge vga_vsync);
  @(negedge vga_vsync); 
	write_bmp(img_camera,"/tp/xph3app/xph3app602/projet_drone/IMG_OUT/img_cam.bmp"); // used for detection
        write_bmp(img_vga,"/tp/xph3app/xph3app602/projet_drone/IMG_OUT/img_out.bmp"); // used for detection 	//write_bmp(img_vga_2,"../IMG_OUT/img_barycentre.bmp"); // used for detection
  @(posedge vga_vsync); $finish;
end

endmodule
