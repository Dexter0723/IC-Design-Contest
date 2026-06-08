module JAM (
           input CLK,
           input RST,
           output [2:0] W,
           output [2:0] J,
           input [6:0] Cost,
           output reg [3:0] MatchCount,
           output reg [9:0] MinCost,
           output reg Valid
       );

reg [4:0]state,next_state;
parameter IDLE =0,OUTPUT = 1,COMPARE = 2,SWITCH = 3,INVERSE = 4,CLEAR = 5,DONE = 6;
parameter GET_0 = 10;
parameter GET_1 = 11;
parameter GET_2 = 12;
parameter GET_3 = 13;
parameter GET_4 = 14;
parameter GET_5 = 15;
parameter GET_6 = 16;
parameter GET_7 = 17;
parameter COMPUTE = 18;

reg [2:0]W_count;
reg [2:0]J_count[0:7];
reg done_flag,compare_flag,switch_flag,inverse_flag;
reg [9:0] Min_cost_reg;
reg [15:0] count;

reg [2:0] compare_count;
reg [2:0] compare_reg;
wire [2:0] next_compare_count;

reg [2:0] switch_count;
reg [2:0] switch_count_reg;
reg [2:0] switch_reg;

reg [2:0] inverse_count;
reg [2:0] right,left;

reg [3:0] i;

assign W = W_count;
assign J = J_count[i];

assign next_compare_count = compare_count - 3'd1;

always @(posedge CLK or posedge RST) begin
    if(RST) begin
        state <= IDLE;
    end
    else begin
        state <= next_state;
    end
end

always @(*) begin
    case(state)
        IDLE : begin
            next_state = GET_0;
        end
        GET_0 : begin
            next_state = GET_1;
        end
        GET_1 : begin
            next_state = GET_2;
        end
        GET_2 : begin
            next_state = GET_3;
        end
        GET_3 : begin
            next_state = GET_4;
        end
        GET_4 : begin
            next_state = GET_5;
        end
        GET_5 : begin
            next_state = GET_6;
        end
        GET_6 : begin
            next_state = GET_7;
        end
        GET_7 : begin
            next_state = COMPUTE;
        end
        COMPUTE : begin
            next_state = OUTPUT;
        end
        OUTPUT : begin
            next_state = COMPARE;
        end

        COMPARE : begin
            next_state = done_flag ? DONE : (compare_flag ? SWITCH : COMPARE);
        end
        SWITCH : begin
            next_state = switch_flag ? INVERSE : SWITCH;
        end
        INVERSE : begin
            next_state = (left >= right) ? CLEAR : INVERSE;
        end
        CLEAR : begin
            next_state = GET_0;
        end
        DONE : begin
            next_state = IDLE;
        end
        default : begin
            next_state = IDLE;
        end
    endcase
end

always @(posedge CLK or posedge RST) begin
    if(RST) begin
        for(i = 0;i < 4'd7;i = i + 1) begin
            J_count[i] <= 3'b0;
        end
        W_count <= 3'd7;
        done_flag <= 1'b0;
        compare_flag <= 1'b0;
        switch_flag <= 1'b0;
        inverse_flag <= 1'b0;

        Valid <= 1'b0;
        MinCost <= 10'b0;
        MatchCount <= 4'b0;

        count <= 16'b0;
        Min_cost_reg <= 10'b0;

        compare_count<= 3'd7;
        compare_reg<= 3'b0;

        switch_count <= 3'd7;
        switch_count_reg <= 3'd7;
        switch_reg <= 3'd7;

        right <= 3'b0;
        left <= 3'b0;
    end
    else begin
        case(state)
            IDLE : begin
                i <= 4'd7;
                W_count <= 3'd7;
                J_count[0] <= 3'd0;
                J_count[1] <= 3'd1;
                J_count[2] <= 3'd2;
                J_count[3] <= 3'd3;
                J_count[4] <= 3'd4;
                J_count[5] <= 3'd5;
                J_count[6] <= 3'd6;
                J_count[7] <= 3'd7;
                Min_cost_reg <= 10'b0;
                count <= 16'b0;
                compare_count<= 3'd7;
                compare_reg<= 3'b0;
                switch_count <= 3'd7;
                switch_reg <= 3'd7;
                inverse_count<= 3'd0;
            end
            GET_0 : begin
                W_count <= W_count - 3'b1;
                i <= i - 4'd1;
            end
            GET_1 : begin
                W_count <= W_count - 3'b1;
                i <= i - 4'd1;
                Min_cost_reg <= Min_cost_reg + Cost;
            end
            GET_2 : begin
                W_count <= W_count - 3'b1;
                i <= i - 4'd1;
                Min_cost_reg <= Min_cost_reg + Cost;
            end
            GET_3 : begin
                W_count <= W_count - 3'b1;
                i <= i - 4'd1;
                Min_cost_reg <= Min_cost_reg + Cost;
            end
            GET_4 : begin
                W_count <= W_count - 3'b1;
                i <= i - 4'd1;
                Min_cost_reg <= Min_cost_reg + Cost;
            end
            GET_5 : begin
                W_count <= W_count - 3'b1;
                i <= i - 4'd1;
                Min_cost_reg <= Min_cost_reg + Cost;
            end
            GET_6 : begin
                W_count <= W_count - 3'b1;
                i <= i - 4'd1;
                Min_cost_reg <= Min_cost_reg + Cost;
            end
            GET_7 : begin
                W_count <= 3'd7;
                Min_cost_reg <= Min_cost_reg + Cost;
            end
            COMPUTE : begin
                Min_cost_reg <= Min_cost_reg + Cost;
            end

            OUTPUT : begin
                if((MinCost > Min_cost_reg) || (MatchCount == 4'b0)) begin
                    MinCost <= Min_cost_reg;
                    MatchCount <= 4'd1;
                end
                else if(MinCost == Min_cost_reg) begin
                    MatchCount <= MatchCount + 4'b1;
                end
                Min_cost_reg <= 10'b0;
                i <= 4'd7;
            end

            COMPARE : begin
                if(compare_count == 3'b0) begin
                    done_flag <= 1'b1;
                end
                else begin
                    if(J_count[compare_count] > J_count[next_compare_count]) begin
                        compare_flag <= 1'b1;
                        compare_reg <= J_count[next_compare_count];
                    end
                    else begin
                        compare_count <= compare_count - 3'd1;
                    end
                end
            end

            SWITCH : begin
                if(switch_count > next_compare_count) begin
                    switch_count <= switch_count - 3'd1;
                    if(switch_reg >= J_count[switch_count] && J_count[switch_count] > compare_reg) begin
                        switch_reg <= J_count[switch_count];
                        switch_count_reg <= switch_count;
                    end
                    else begin
                        switch_reg <= switch_reg;
                    end
                end
                else begin
                    switch_flag <= 1'b1;
                    J_count[switch_count_reg] <= compare_reg;
                    J_count[next_compare_count] <= switch_reg;

                    right <= 3'd7;
                    left <= compare_count;
                end
            end

            INVERSE : begin
                /*for(j = 0;j <= 3'd7;j = j + 1) begin
                    if(j >= compare_count) begin
                        J_count[j] <= J_count[7 - (j - compare_count)];
                    end
                end*/

                if (left < right) begin
                    J_count[left] <= J_count[right];
                    J_count[right] <= J_count[left];
                    left <= left + 3'd1;
                    right <= right - 3'd1;
                end
            end
            CLEAR : begin
                compare_count<= 3'd7;
                compare_reg<= 3'b0;
                switch_count <= 3'd7;
                switch_count_reg <= 3'd7;
                switch_reg <= 3'd7;
                inverse_count <= 3'd0;
                compare_flag <= 1'b0;
                switch_flag <= 1'b0;
                inverse_flag <= 1'b0;
            end

            DONE : begin
                Valid <= 1'b1;
            end

            default : begin

            end
        endcase
    end
end

endmodule

