// --------------------------------------------------------------------
// Copyright (c) 2007 by Terasic Technologies Inc. 
// --------------------------------------------------------------------
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development 
//   Kits made by Terasic.  Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use 
//   or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     Terasic Technologies Inc
//                     356 Fu-Shin E. Rd Sec. 1. JhuBei City,
//                     HsinChu County, Taiwan
//                     302
//
//                     web: http://www.terasic.com/
//                     email: support@terasic.com
//
// --------------------------------------------------------------------
//
// Major Functions:	DE1 D5M
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| Johnny FAN        :| 07/07/09  :| Initial Revision
//  --------------------------------------------------------------------

module D5M_IP
	(
		////////////////////	Clock Input	 	////////////////////	 
		CLOCK_50,						//	50 MHz
		////////////////////	Push Button		////////////////////
		KEY,								//	Pushbutton[3:0]
		////////////////////	DPDT Switch		////////////////////
		SW,								//	Toggle Switch[9:0]
		////////////////////////	LED		////////////////////////
		LEDG,								//	LED Green[7:0]
		////////////////////	GPIO	////////////////////////////		
//		GPIO_1							//	GPIO Connection 1
		CCD_DATA,
		CCD_FVAL,
        CCD_LVAL,
        CCD_PIXCLK,
		CCD_MCLK,
		TRIGGER,
		RESETn,
		I2C_SCLK,
		I2C_SDAT,
		sCCD_R,
		sCCD_G,
		sCCD_B,
		sCCD_DVAL,		
		X_Cont,
		Y_Cont,
		owrite_DPRAM	
		
//assign	CCD_DATA[1]	=	GPIO_1[12];
//assign	CCD_DATA[2]	=	GPIO_1[11];
//assign	CCD_DATA[3]	=	GPIO_1[10];
//assign	CCD_DATA[4]	=	GPIO_1[9];
//assign	CCD_DATA[5]	=	GPIO_1[8];
//assign	CCD_DATA[6]	=	GPIO_1[7];
//assign	CCD_DATA[7]	=	GPIO_1[6];
//assign	CCD_DATA[8]	=	GPIO_1[5];
//assign	CCD_DATA[9]	=	GPIO_1[4];
//assign	CCD_DATA[10]=	GPIO_1[3];
//assign	CCD_DATA[11]=	GPIO_1[1];
//assign	GPIO_1[16]	=	CCD_MCLK;
//assign	CCD_FVAL	   =	GPIO_1[22];
//assign	CCD_LVAL	   =	GPIO_1[21];
//assign	CCD_PIXCLK	=	GPIO_1[0];
//assign	GPIO_1[19]	=	1'b1;  // tRIGGER
//assign	GPIO_1[17]	=	DLY_RST_1;
		////////////////////	R G B	////////////////////////////
//		R,						//	Rouge sur 11 bits
//		G,
//		B,
//		dVALID
	);

////////////////////////	Clock Input	 	////////////////////////
input			CLOCK_50;				//	50 MHz
////////////////////////	Push Button		////////////////////////
input	[3:0]	KEY;						//	Pushbutton[3:0]
////////////////////////	DPDT Switch		////////////////////////
input	[9:0]	SW;						//	Toggle Switch[9:0]
////////////////////////////	LED		////////////////////////////
output	[7:0]	LEDG;					//	LED Green[7:0]
////////////////////////	GPIO	////////////////////////////////
//inout	[35:0]	GPIO_1;				//	GPIO Connection 0
input   [11:0]  CCD_DATA;
input           CCD_FVAL;
input           CCD_LVAL;
input           CCD_PIXCLK;
output			CCD_MCLK;
output			TRIGGER;
output			RESETn;
output		    I2C_SCLK;
output   		I2C_SDAT;
output	[11:0]	sCCD_R;
output	[11:0]	sCCD_G;
output	[11:0]	sCCD_B;
output			sCCD_DVAL;		
output	[11:0]	X_Cont;
output	[10:0]	Y_Cont;
output			owrite_DPRAM;				


///////////////////////////////////////////////////////////////////
//=============================================================================
// REG/WIRE declarations
//=============================================================================

//	CCD
wire	[11:0]	CCD_DATA;
wire				CCD_SDAT;
wire				CCD_SCLK;
//wire				CCD_FLASH;
wire				CCD_FVAL;
wire				CCD_LVAL;
wire				CCD_PIXCLK;
wire				CCD_MCLK;				//	CCD Master Clock

//wire	[15:0]	Read_DATA1;
//wire	[15:0]	Read_DATA2;
wire	[11:0]	mCCD_DATA;
wire				mCCD_DVAL;
wire				mCCD_DVAL_d;
wire	[11:0]	X_Cont;
wire	[10:0]	Y_Cont;
wire	[9:0]		X_ADDR;
wire	[31:0]	Frame_Cont;
wire				DLY_RST_0;
wire				DLY_RST_1;
wire				DLY_RST_2;
wire				Read;
reg	[11:0]	rCCD_DATA;
reg				rCCD_LVAL;
reg				rCCD_FVAL;
//wire	[11:0]	sCCD_R;
//wire	[11:0]	sCCD_G;
//wire	[11:0]	sCCD_B;
//wire				sCCD_DVAL;

reg	[1:0]		rClk;

//=============================================================================
// Structural coding
//=============================================================================
//assign	CCD_DATA[0]	=	GPIO_1[13];
//assign	CCD_DATA[1]	=	GPIO_1[12];
//assign	CCD_DATA[2]	=	GPIO_1[11];
//assign	CCD_DATA[3]	=	GPIO_1[10];
//assign	CCD_DATA[4]	=	GPIO_1[9];
//assign	CCD_DATA[5]	=	GPIO_1[8];
//assign	CCD_DATA[6]	=	GPIO_1[7];
//assign	CCD_DATA[7]	=	GPIO_1[6];
//assign	CCD_DATA[8]	=	GPIO_1[5];
//assign	CCD_DATA[9]	=	GPIO_1[4];
//assign	CCD_DATA[10]=	GPIO_1[3];
//assign	CCD_DATA[11]=	GPIO_1[1];
//assign	GPIO_1[16]	=	CCD_MCLK;
//assign	CCD_FVAL	   =	GPIO_1[22];
//assign	CCD_LVAL	   =	GPIO_1[21];
//assign	CCD_PIXCLK	=	GPIO_1[0];
//assign	GPIO_1[19]	=	1'b1;  // tRIGGER
//assign	GPIO_1[17]	=	DLY_RST_1;

assign	LEDG		   =	Y_Cont;

assign	R				= sCCD_R;
assign	G				= sCCD_G;
assign	B				= sCCD_B;

assign	RESETn			= DLY_RST_1;  
assign	TRIGGER	=	1'b1;  // tRIGGER

always@(posedge CLOCK_50)	rClk	<=	rClk+1;

//wire	[9:0]	Rin;
//wire	[9:0]	Gin;
//wire	[9:0]	Bin;



always@(posedge CCD_PIXCLK)
begin
	rCCD_DATA	<=	CCD_DATA;
	rCCD_LVAL	<=	CCD_LVAL;
	rCCD_FVAL	<=	CCD_FVAL;
end



Reset_Delay			u2	(	
							.iCLK  (CLOCK_50),
							.iRST  (KEY[0]),
							.oRST_0(DLY_RST_0),
							.oRST_1(DLY_RST_1),
							.oRST_2(DLY_RST_2)
						);

CCD_Capture			u3	(	
							.oDATA      (mCCD_DATA),
							.oDVAL      (mCCD_DVAL),
							.oX_Cont    (X_Cont),
							.oY_Cont    (Y_Cont),
							.oFrame_Cont(Frame_Cont),
							.iDATA      (rCCD_DATA),
							.iFVAL      (rCCD_FVAL),
							.iLVAL      (rCCD_LVAL),
							.iSTART     (!KEY[3]),
							.iEND       (!KEY[2]),
							.iCLK       (CCD_PIXCLK),
							.iRST       (DLY_RST_2)
						);

RAW2RGB				u4	(	
						    .oRed   (sCCD_R),
							.oGreen (sCCD_G),
							.oBlue  (sCCD_B),
							.oDVAL  (sCCD_DVAL),
							.owrite_DPRAM  (owrite_DPRAM),
							.iX_Cont(X_Cont),
							.iY_Cont(Y_Cont),
						    .iCLK   (CCD_PIXCLK),
							.iRST   (DLY_RST_1),
							.iDATA  (mCCD_DATA),
							.iDVAL  (mCCD_DVAL)								
						);

assign CCD_MCLK = rClk[0];

I2C_CCD_Config 		u8	(	//	Host Side
								 .iCLK			  (CLOCK_50),
								 .iRST_N         (DLY_RST_2),
								 .iZOOM_MODE_SW  (SW[9]),
								 .iEXPOSURE_ADJ  (KEY[1]),
								 .iEXPOSURE_DEC_p(SW[0]),
								  //	I2C Side
//								 .I2C_SCLK		  (GPIO_1[24]),
//								 .I2C_SDAT		  (GPIO_1[23])
							     .I2C_SCLK		  (I2C_SCLK),
								 .I2C_SDAT		  (I2C_SDAT)
							   );

endmodule