module SET ( clk , rst, en, central, radius, mode, busy, valid, candidate );

	input clk, rst;
	input en;
	input [23:0] central;
	input [11:0] radius;
	input [1:0] mode;
	output reg busy;
	output reg valid;
	output reg [7:0] candidate;


	reg [3:0] XA,XB,XC,YA,YB,YC;
	reg [3:0] RA,RB,RC;
	reg [1:0] current_md;

	

	reg [3:0] square_i;
	reg [7:0] square_o;
	reg [8:0] cal_reg_1,cal_reg_2;
	reg ina,inb,inc;
	reg [3:0] set_cs,set_ns;
	reg [3:0] state_x,state_y;

	parameter WAIT_DATA = 0;
	parameter CAL_A_DX2			= 1;
	parameter CAL_A_DY2			= 2;
	parameter CAL_A_R2			= 3;
	parameter IN_A					= 4;
	parameter CAL_B_DX2			= 5;
	parameter CAL_B_DY2			= 6;
	parameter CAL_B_R2			= 7;
	parameter IN_B					= 8;
	parameter CAL_C_DX2			= 9;
	parameter CAL_C_DY2			= 10;
	parameter CAL_C_R2			= 11;
	parameter IN_C					= 12;
	parameter CAL_CANDIDATE	= 13;
	parameter DATA_OUT 			= 14;

	always@(*)begin
		busy = set_cs==WAIT_DATA ? 0 : 1;
		valid = set_cs==DATA_OUT ? 1 : 0;
	end

	always @(posedge clk or posedge rst) begin :state_machine
		if (rst) begin
			set_cs <= WAIT_DATA;			
		end else begin
			set_cs <= set_ns;
		end
	end


	always@(*)begin : next_state
		case (set_cs)
			WAIT_DATA: 	set_ns = en ? CAL_A_DX2 : WAIT_DATA;
			
			CAL_A_DX2: 	set_ns = CAL_A_DY2; 
			
			CAL_A_DY2:	set_ns = CAL_A_R2;
			
			CAL_A_R2:		set_ns = IN_A;

			IN_A: 			set_ns = current_md==0 ? CAL_CANDIDATE : CAL_B_DX2;

			CAL_B_DX2: 	set_ns = CAL_B_DY2;
			
			CAL_B_DY2: 	set_ns = CAL_B_R2;
			
			CAL_B_R2: 	set_ns = IN_B;
			
			IN_B: 			set_ns = (current_md==1||current_md==2) ? CAL_CANDIDATE:CAL_C_DX2;
			
			CAL_C_DX2: 	set_ns = CAL_C_DY2;
			
			CAL_C_DY2: 	set_ns = CAL_C_R2;
			
			CAL_C_R2: 	set_ns = IN_C;
			
			IN_C: 			set_ns = CAL_CANDIDATE;
			
			CAL_CANDIDATE: set_ns = (state_y==8 && state_x==8) ? DATA_OUT:CAL_A_DX2;

			DATA_OUT: 	set_ns = WAIT_DATA;

			default : set_ns = WAIT_DATA;

		endcase
	end

	always@(posedge clk or posedge rst)begin :coordinate_contorller
		if(rst)begin
			state_x <= 1;
			state_y <= 1;
		end else begin
			if(set_cs==WAIT_DATA)begin
				state_x <= 1;
				state_y <= 1;
			end
			else if(set_cs==CAL_CANDIDATE)begin
				if(state_y==8 && state_x ==8)begin
					state_x <= 1;
					state_y <= 1;
				end
				else if(state_x==8)begin
					state_x <= 1;
					state_y <= state_y + 1;
				end
				else state_x <= state_x + 1;
			end
		end
	end
	





	always@(*)begin : cal_square
		square_o <= square_i **2;
	end


	always@(*)begin : square_controller
		case(set_cs)
			CAL_A_DX2: begin
				square_i <= XA > state_x ? XA - state_x : state_x - XA;
			end
			CAL_A_DY2: begin
				square_i <= YA > state_y ? YA - state_y : state_y - YA;
			end
			CAL_A_R2: begin
				square_i <= RA;
			end
			CAL_B_DX2: begin
				square_i <= XB > state_x ? XB - state_x : state_x - XB;
			end
			CAL_B_DY2: begin
				square_i <= YB > state_y ? YB - state_y : state_y - YB;
			end
			CAL_B_R2: begin
				square_i <= RB;
			end
			CAL_C_DX2:	begin
				square_i <= XC > state_x ? XC - state_x : state_x - XC;
			end
			CAL_C_DY2: begin
				square_i <= YC > state_y ? YC - state_y : state_y - YC;
			end
			CAL_C_R2: begin
				square_i <= RC;
			end
			default: begin
				square_i <= 0;
			end
		endcase
	end

	always@(posedge clk or posedge rst)begin : data_controller
		if(rst)begin
			candidate <= 0;
		end else begin
			case(set_cs)
				WAIT_DATA: begin
					if(en)begin
						{XA,YA,XB,YB,XC,YC} <= central;
						{RA,RB,RC} <= radius;
						current_md <= mode;
						candidate <= 0;
					end
				end
				CAL_A_DX2: begin
					cal_reg_1 <= square_o;	
				end
				CAL_A_DY2: begin
					cal_reg_1 <= square_o + cal_reg_1;
				end
				CAL_A_R2: begin
					cal_reg_2 <= square_o;
				end
				IN_A: begin
					ina <= (cal_reg_1<=cal_reg_2)?1:0;
				end
				CAL_B_DX2: begin
					cal_reg_1 <= square_o;	
				end
				CAL_B_DY2: begin
					cal_reg_1 <= square_o + cal_reg_1;
				end
				CAL_B_R2: begin
					cal_reg_2 <= square_o;
				end
				IN_B: begin
					inb <= (cal_reg_1<=cal_reg_2)?1:0;
				end
				CAL_C_DX2: begin
					cal_reg_1 <= square_o;	
				end
				CAL_C_DY2: begin
					cal_reg_1 <= square_o + cal_reg_1;
				end
				CAL_C_R2: begin
					cal_reg_2 <= square_o;
				end
				IN_C: begin
					inc <= (cal_reg_1<=cal_reg_2)?1:0;
				end
			
				CAL_CANDIDATE: begin
					case(current_md)
						0: candidate <= candidate + ina;
						1: candidate <= candidate + (ina&&inb);
						2: candidate <= candidate + (ina^inb);
						3: candidate <= candidate + (~(ina^inb^inc)&&(ina||inb||inc));
					endcase
				end
			endcase
		end
	end

endmodule 
