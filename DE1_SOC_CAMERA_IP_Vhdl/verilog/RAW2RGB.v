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
// Major Functions:	RAW2RGB
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| Johnny FAN        :| 07/07/09  :| Initial Revision
// --------------------------------------------------------------------

module RAW2RGB(	oRed,
				oGreen,
				oBlue,
				oDVAL,
				owrite_DPRAM,
				iX_Cont,
				iY_Cont,
				iDATA,
				iDVAL,
				iCLK,
				iRST
				);

input	[10:0]	iX_Cont;
input	[10:0]	iY_Cont;
input	[11:0]	iDATA;
input			iDVAL;
input			iCLK;
input			iRST;
output	[11:0]	oRed;
output	[11:0]	oGreen;
output	[11:0]	oBlue;
output			oDVAL;
output			owrite_DPRAM;
wire	[11:0]	mDATA_0;
wire	[11:0]	mDATA_1;
reg		[11:0]	mDATAd_0;
reg		[11:0]	mDATAd_1;
reg		[11:0]	mCCD_R;
reg		[12:0]	mCCD_G;
reg		[11:0]	mCCD_B;
reg				mDVAL;
reg				mwrite_DPRAM;


assign	oRed	=	mCCD_R[11:0];
assign	oGreen	=	mCCD_G[12:1];
assign	oBlue	=	mCCD_B[11:0];
assign	oDVAL	=	mDVAL;
assign	owrite_DPRAM = mwrite_DPRAM;

Line_Buffer 	u0	(	.clken(iDVAL),
						.clock(iCLK),
						.shiftin(iDATA),
						.taps0x(mDATA_1),
						.taps1x(mDATA_0)	);

always@(posedge iCLK or negedge iRST)
begin
	if(!iRST)
	begin
		mCCD_R	<=	0;
		mCCD_G	<=	0;
		mCCD_B	<=	0;
		mDATAd_0<=	0;
		mDATAd_1<=	0;
		mDVAL	<=	0;
	end
	else
	begin
		mDATAd_0	<=	mDATA_0;
		mDATAd_1	<=	mDATA_1;
		mDVAL		<=	{iY_Cont[0]|iX_Cont[0]}	?	1'b0	:	iDVAL;
		if({iY_Cont[0],iX_Cont[0]}==2'b10)
		begin
			mCCD_R	<=	mDATA_0;
			mCCD_G	<=	mDATAd_0+mDATA_1;
			mCCD_B	<=	mDATAd_1;
		end	
		else if({iY_Cont[0],iX_Cont[0]}==2'b11)
		begin
			mCCD_R	<=	mDATAd_0;
			mCCD_G	<=	mDATA_0+mDATAd_1;
			mCCD_B	<=	mDATA_1;
		end
		else if({iY_Cont[0],iX_Cont[0]}==2'b00)
		begin
			mCCD_R	<=	mDATA_1;
			mCCD_G	<=	mDATA_0+mDATAd_1;
			mCCD_B	<=	mDATAd_0;
		end
		else if({iY_Cont[0],iX_Cont[0]}==2'b01)
		begin
			mCCD_R	<=	mDATAd_1;
			mCCD_G	<=	mDATAd_0+mDATA_1;
			mCCD_B	<=	mDATA_0;
		end
	end
end

always@(posedge iCLK or negedge iRST)
begin
	if(!iRST)
	begin
	  mwrite_DPRAM	<=	0;
	end
	else
//	 if( {iX_Cont[1],iX_Cont[0],iY_Cont[2]} == 2'b000)
//	 if( {iX_Cont[3],iX_Cont[2],iX_Cont[1],iY_Cont[3],iY_Cont[2],iY_Cont[1],iDVAL} == 2'b0000001)
//	 if( {iX_Cont[2],iX_Cont[1],iY_Cont[2],iY_Cont[1],iDVAL} == 2'b00001) // 128x128
//	 if( {iX_Cont[1],iY_Cont[1],iDVAL} == 2'b001) // 256x256
	// if( {iDVAL} == 2'b1)  ) // 512x512
	if( ({iDVAL} == 2'b1) && iX_Cont < 16'h400 )
//	 if( {iX_Cont[0],iY_Cont[2]} == 2'b00)
	  begin
	   mwrite_DPRAM	<=	1;
	  end
	  else
	  begin
	  mwrite_DPRAM	<=	0;
	  end
	
	end 
	
endmodule