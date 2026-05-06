
`timescale 1ns/10ps
module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, lbp_valid, lbp_data, finish);
input   	clk;
input   	reset;
output  [13:0] 	gray_addr;
output         	gray_req;
input   	    gray_ready;
input   [7:0] 	gray_data;
output  [13:0] 	lbp_addr;
output  	    lbp_valid;
output  [7:0] 	lbp_data;
output  	    finish;
//====================================================================
reg [3:0] state,next_state;
parameter IDLE = 0,READ = 1,PIXEL_0 = 2,PIXEL_1 = 3,PIXEL_2 = 4,PIXEL_3 = 5,PIXEL_4 = 6,PIXEL_5 = 7,PIXEL_6 = 8,PIXEL_7 = 9,WRITE = 10,FINISH = 11;

reg [13:0]count,pixel_count;
reg [7:0]pixel_center;
reg [7:0]lbp_reg_data;

always @(posedge clk or posedge reset) begin
    if(reset) begin
        state <= IDLE;
    end
    else begin
        state <= next_state;
    end
end

always @(*) begin
    case(state)
        IDLE : begin
            next_state <= gray_ready ? READ : IDLE;
        end
        READ : begin
            next_state <= PIXEL_0;
        end
        PIXEL_0 : begin
            next_state <= PIXEL_1;
        end
        PIXEL_1 : begin
            next_state <= PIXEL_2;
        end
        PIXEL_2 : begin
            next_state <= PIXEL_3;
        end
        PIXEL_3 : begin
            next_state <= PIXEL_4;
        end
        PIXEL_4 : begin
            next_state <= PIXEL_5;
        end
        PIXEL_5 : begin
            next_state <= PIXEL_6;
        end
        PIXEL_6 : begin
            next_state <= PIXEL_7;
        end
        PIXEL_7 : begin
            next_state <= WRITE;
        end
        WRITE : begin
            next_state <= (pixel_count == 14'd16254) ? FINISH : READ;
        end
        FINISH : begin
            next_state <= IDLE;
        end
        default : begin
            next_state <= IDLE;
        end
    endcase
end

assign finish = (state == FINISH);
assign gray_req = (state >= 1) && (state <= 10);
assign gray_addr = (state == READ) ? pixel_count : count;
assign lbp_valid = (pixel_count[6:0] != 7'b0) && (pixel_count >= 14'd129) && (pixel_count <= 14'd16254) && (pixel_count[6:0] != 7'b1111111) && (state == WRITE);
assign lbp_addr = pixel_count;
assign lbp_data = lbp_valid ? ({lbp_reg_data[7],lbp_reg_data[6],lbp_reg_data[5],lbp_reg_data[4],lbp_reg_data[3],lbp_reg_data[2],lbp_reg_data[1],lbp_reg_data[0]}) : 14'b0;

always @(posedge clk or posedge reset) begin
    if(reset) begin
        pixel_count <= 14'b0;
        count <= 14'b0;
        lbp_reg_data <= 8'b0;
        pixel_center <= 8'b0;
    end
    else begin
        case(state)
            IDLE : begin
                pixel_count <= 14'd129;
                count <= 14'b0;
            end
            READ : begin
                pixel_center <= gray_data;
                count <= pixel_count - 129;
            end
            PIXEL_0 : begin
                count <= pixel_count - 128;
                lbp_reg_data[0] <= (gray_data >= pixel_center) ? 1 : 0;
            end
            PIXEL_1 : begin
                count <= pixel_count - 127;
                lbp_reg_data[1] <= (gray_data >= pixel_center) ? 1 : 0;
            end
            PIXEL_2 : begin
                count <= pixel_count - 1;
                lbp_reg_data[2] <= (gray_data >= pixel_center) ? 1 : 0;
            end
            PIXEL_3 : begin
                count <= pixel_count + 1;
                lbp_reg_data[3] <= (gray_data >= pixel_center) ? 1 : 0;
            end
            PIXEL_4 : begin
                count <= pixel_count + 127;
                lbp_reg_data[4] <= (gray_data >= pixel_center) ? 1 : 0;
            end
            PIXEL_5 : begin
                count <= pixel_count + 128;
                lbp_reg_data[5] <= (gray_data >= pixel_center) ? 1 : 0;
            end
            PIXEL_6 : begin
                count <= pixel_count + 129;
                lbp_reg_data[6] <= (gray_data >= pixel_center) ? 1 : 0;
            end
            PIXEL_7 : begin
                lbp_reg_data[7] <= (gray_data >= pixel_center) ? 1 : 0;
            end
            WRITE : begin
                pixel_count <= pixel_count + 1;
                count <= 0;
            end
            FINISH : begin
                pixel_count <= 14'b0;
                count <= 14'b0;
                lbp_reg_data <= 8'b0;
                pixel_center <= 8'b0;
            end
            default : begin
                pixel_count <= 14'b0;
                count <= 14'b0;
                lbp_reg_data <= 8'b0;
                pixel_center <= 8'b0;
            end
        endcase
    end
end

//====================================================================
endmodule
