module DT(
           input 			clk,
           input			reset,
           output	 		done ,
           output	reg		sti_rd ,
           output	reg 	[9:0]	sti_addr ,
           input	 		[15:0]	sti_di,
           output	reg		res_wr ,
           output	reg		res_rd ,
           output	reg 	[13:0]	res_addr ,
           output	reg 	[7:0]	res_do,
           input		    [7:0]	res_di
       );

parameter IDLE = 0,READ_ROM = 1,READ_RAM = 2,F_WRITE_RAM = 3,B_WRITE_RAM = 4,WRITE_DONE = 5,FINISH = 6;
parameter FW_0 = 7,FW_1 = 8,FW_2 = 9,FW_3 = 10,BW_0 = 11,BW_1 = 12,BW_2 = 13,BW_3 =14,BW_4 = 15;
reg [3:0]state,next_state;
reg [7:0]compare;
reg [3:0]pixel;
reg [13:0]count;
reg FB_Flag;

assign done = (state == FINISH) && (count == 14'd0);

always @(posedge clk or negedge reset) begin
    if(!reset) begin
        state <= IDLE;
    end
    else begin
        state <= next_state;
    end
end

always @(*) begin
    case(state)
        IDLE : begin
            next_state = READ_ROM;
        end
        READ_ROM : begin
            next_state = (sti_di[pixel] == 0) ? F_WRITE_RAM : FW_0;
        end
        FW_0 : begin
            next_state = FW_1;
        end
        FW_1 : begin
            next_state = FW_2;
        end
        FW_2 : begin
            next_state = FW_3;
        end
        FW_3 : begin
            next_state = F_WRITE_RAM;
        end
        F_WRITE_RAM : begin
            next_state = WRITE_DONE;
        end

        WRITE_DONE : begin
            //next_state <= (count == 16383) ? FINISH : READ_ROM;
            next_state = FB_Flag ? READ_RAM : READ_ROM;
        end

        READ_RAM : begin
            next_state = (res_di == 0) ? B_WRITE_RAM : BW_0;
        end
        BW_0 : begin
            next_state = BW_1;
        end
        BW_1 : begin
            next_state = BW_2;
        end
        BW_2 : begin
            next_state = BW_3;
        end
        BW_3 : begin
            next_state = B_WRITE_RAM;
        end
        B_WRITE_RAM : begin
            next_state = (count == 0) ? FINISH : WRITE_DONE;
        end
        FINISH : begin
            next_state = IDLE;
        end
        default : begin
            next_state = IDLE;
        end
    endcase
end

always @(posedge clk or negedge reset) begin
    if(!reset) begin
        sti_rd <= 0;
        sti_addr <= 10'b0;
        res_wr <= 0;
        res_rd <= 0;
        res_addr <= 14'b0;
        res_do <= 8'b0;
        compare <= 8'b0;
        pixel <= 4'd15;
        count <= 14'b0;
        FB_Flag <= 0;
    end
    else begin
        case(state)
            IDLE : begin
                sti_rd <= 1;
            end
            READ_ROM : begin
                res_rd <= 1;
                res_wr <= 0;
                res_addr <= (count == 0) ? count : count - 1;
            end
            FW_0 : begin
                res_addr <= count - 127;
                compare <= res_di;
            end
            FW_1 : begin
                res_addr <= count - 128;
                compare <= (res_di < compare) ? res_di : compare;
            end
            FW_2 : begin
                res_addr <= count - 129;
                compare <= (res_di < compare) ? res_di : compare;
            end
            FW_3 : begin
                compare <= (res_di < compare) ? res_di + 1 : compare + 1;
            end
            F_WRITE_RAM : begin
                res_rd <= 0;
                res_wr <= 1;
                res_addr <= count;
                res_do <= compare;
                count <= (count == 16383) ? count : count + 1;
                //FB_Flag <= ((count == 16383) && (pixel == 4'd0)) ? 1 : 0;
                FB_Flag <= ((count == 16383)) ? 1 : 0;
            end

            WRITE_DONE : begin
                sti_addr <= (pixel == 4'd0) ? ((sti_addr == 10'd1023) ? sti_addr : (sti_addr + 1)) : sti_addr;
                pixel <= (pixel == 4'd0) ? ((sti_addr == 10'd1023) ? pixel : 4'd15) : pixel - 4'd1;
                res_rd <= 1;
                res_wr <= 0;
                compare <= 0;
                res_addr <= count;
            end

            READ_RAM : begin
                res_rd <= 1;
                res_wr <= 0;
                res_addr <= count + 1;
                compare <= res_di;
            end
            BW_0 : begin
                res_addr <= count + 127;
                compare <= (res_di + 8'd1 < compare) ? res_di + 8'd1 : compare;
            end
            BW_1 : begin
                res_addr <= count + 128;
                compare <= (res_di + 8'd1 < compare) ? res_di + 8'd1 : compare;
            end
            BW_2 : begin
                res_addr <= count + 129;
                compare <= (res_di + 8'd1 < compare) ? res_di + 8'd1 : compare;
            end
            BW_3 : begin
                compare <= (res_di + 8'd1 < compare) ? res_di + 8'd1 : compare;
            end
            B_WRITE_RAM : begin
                res_rd <= 0;
                res_wr <= 1;
                res_addr <= count;
                res_do <= compare;
                count <= (count == 0) ? count : count - 1;
            end
            FINISH : begin
                res_wr <= 0;
                res_rd <= 0;
                res_addr <= 14'b0;
                res_do <= 8'b0;
            end
            default : begin
                res_wr <= 0;
                res_rd <= 0;
                res_addr <= 14'b0;
                res_do <= 8'b0;
            end
        endcase
    end
end

endmodule

