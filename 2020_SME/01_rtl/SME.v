module SME(clk,reset,chardata,isstring,ispattern,valid,match,match_index);
input clk;
input reset;
input [7:0] chardata;
input isstring;
input ispattern;
output match;
output [4:0] match_index;
output valid;
//reg match;
//reg [4:0] match_index;
//reg valid;
parameter ENTER = 0,COMPARE = 1,CLEAR = 2,DONE = 15;
parameter CARET = 8'h5e;     // ^ 8'h5e
parameter DOLLOR = 8'h24;   // $
parameter DOT = 8'h2e;     // .
parameter STAR = 8'h2a;     // * 8'h2a

reg [5:0]state,next_state;
reg [7:0]word[0:7];
reg [7:0]compared_word[0:8];
reg [5:0]first_index;

reg [7:0]str[0:32],pat[0:8];
reg [5:0]str_count,str_compare_count;
reg [4:0]pat_count,pat_compare_count,compare_count;
integer i,j;

reg CARET_flag,DOLLOR_flag,STAR_flag;

reg [5:0]star_str_location;
reg [4:0]star_pat_location;

wire [7:0]str_now,pat_now,pat_next;

assign str_now = str[str_compare_count];
assign pat_now = pat[pat_compare_count];
assign pat_next = pat[pat_compare_count + 1];

always @(posedge clk or posedge reset) begin
    if(reset) begin
        state <= ENTER;
    end
    else begin
        state <= next_state;
    end
end

always @(*) begin
    case(state)
        ENTER : begin
            next_state = (isstring || ispattern) ? ENTER : COMPARE;
        end
        COMPARE : begin
            if(DOLLOR_flag) begin
                next_state = ((pat_compare_count == pat_count) || (str_compare_count == (str_count + 6'd1))) ? DONE : COMPARE;
            end
            else begin
                next_state = ((pat_compare_count == pat_count) || (str_compare_count == str_count)) ? DONE : COMPARE;
            end
        end
        DONE : begin
            next_state = ENTER;
        end
        default : begin
            next_state = ENTER;
        end
    endcase
end

assign valid = ((state == DONE) && !isstring && !ispattern) ? 1'b1 : 1'b0;
assign match = ((state == DONE) && !isstring && !ispattern && (pat_compare_count == pat_count)) ? 1'b1 : 1'b0;
assign match_index = first_index;

always @(posedge clk or posedge reset) begin
    if(reset) begin
        for(i = 0;i < 32;i = i + 1) begin
            str[i] <= 8'b0;
            pat[i] <= 8'b0;
            compared_word[i] <= 8'b0;
            word[i] <= 8'd0;
        end
        str_count <= 5'b0;
        pat_count <= 4'b0;
        compare_count <= 3'b0;
        str_compare_count <= 5'b0;
        pat_compare_count <= 4'b0;
        first_index <= 6'b0;
        CARET_flag <= 1'b0;
        DOLLOR_flag <= 1'b0;
        STAR_flag <= 1'b0;
        i <= 0;
        j <= 0;
    end
    else begin
        case(state)
            ENTER : begin
                str_count <= isstring ? (str_count + 6'd1) : str_count;
                str[str_count] <= isstring ? chardata : 8'd0;
                pat_count <= ispattern ? (pat_count + 4'd1) : pat_count;
                pat[pat_count] <= ispattern ? chardata : 8'd0;
                CARET_flag <= (ispattern && (chardata == CARET)) ? 1'b1 : CARET_flag;
                DOLLOR_flag <= (ispattern && (chardata == DOLLOR)) ? 1'b1 : DOLLOR_flag;
            end
            COMPARE : begin//i for str , j for pat
                case(pat_now)
                    8'h0 : begin
                    end
                    CARET : begin
                        compared_word[0] <= pat[0];
                        if ((str_compare_count == 6'd0 || str[str_compare_count - 5'd1] == 8'h20) && (str[str_compare_count] == pat[pat_compare_count + 6'd1] || pat[pat_compare_count + 6'd1] == 8'h2e) ) begin
                            first_index <= str_compare_count;
                            pat_compare_count <= pat_compare_count + 4'd2;
                            str_compare_count <= str_compare_count + 5'd1;
                            compare_count <= compare_count + 3'd2;
                            compared_word[compare_count + 5'd1] <= pat[pat_compare_count + 5'd1];
                        end
                        else begin
                            str_compare_count <= str_compare_count + 5'd1;
                        end
                    end
                    DOLLOR : begin// && (compare_count == (pat_count - 5'd1))
                        if(((str[str_compare_count] == 8'h0) || (str[str_compare_count] == 8'h20))) begin
                            pat_compare_count <= pat_compare_count + 4'd1;
                            str_compare_count <= str_compare_count + 5'd1;
                            compare_count <= compare_count + 3'd1;
                            compared_word[compare_count]<= pat_now;
                        end
                        else begin
                            if(STAR_flag && (star_str_location < str_count)) begin
                                pat_compare_count <= star_pat_location;
                                str_compare_count <= star_str_location + 6'd1;
                                star_str_location <= star_str_location + 5'd1;
                            end
                            else begin
                                str_compare_count <= first_index + 6'd1;
                                pat_compare_count <= 5'b0;
                                compare_count <= 5'd0;
                                STAR_flag <= 1'b0;
                                for(i = 0;i < 10;i = i + 1) begin
                                    compared_word[i] <= 8'b0;
                                end
                                first_index <= 6'b0;
                            end
                        end
                    end
                    DOT : begin
                        str_compare_count <= str_compare_count + 5'd1;
                        pat_compare_count <= pat_compare_count + 5'd1;
                        compare_count <= compare_count + 3'd1;
                        compared_word[compare_count] <= pat_now;
                        first_index <= (compare_count == 3'd0) ? str_compare_count : first_index;
                    end
                    STAR : begin
                        STAR_flag <= 1'b1;
                        star_str_location <= str_compare_count;
                        star_pat_location <= pat_compare_count + 5'd1;
                        pat_compare_count <= pat_compare_count + 5'd1;
                        //compare_count <= compare_count + 3'd1;
                        //compared_word[compare_count] <= pat_now;
                    end
                    default : begin
                        if((pat_now == str_now) && (pat_now != 8'd0) && (str_now != 8'd0)) begin
                            str_compare_count <= str_compare_count + 6'd1;
                            pat_compare_count <= pat_compare_count + 5'd1;
                            compare_count <= compare_count + 3'd1;
                            compared_word[compare_count] <= pat_now;
                            first_index <= (compare_count == 3'd0) ? str_compare_count : first_index;
                        end
                        else begin
                            if(STAR_flag && (star_str_location < str_count)) begin
                                pat_compare_count <= star_pat_location;
                                str_compare_count <= star_str_location + 6'd1;
                                star_str_location <= star_str_location + 5'd1;
                            end
                            else begin
                                str_compare_count <= (compare_count != 5'd0) ? (first_index + 6'd1) : (str_compare_count + 6'd1);
                                pat_compare_count <= 5'b0;
                                compare_count <= 5'd0;
                                STAR_flag <= 1'b0;
                                for(i = 0;i < 10;i = i + 1) begin
                                    compared_word[i] <= 8'b0;
                                end
                                first_index <= 6'b0;
                            end
                        end
                    end
                endcase
            end
            DONE : begin
                str_compare_count <= 6'b0;
                pat_compare_count <= 5'b0;
                compare_count <= 5'd0;
                for(i = 0;i < 10;i = i + 1) begin
                    compared_word[i] <= 8'b0;
                end
                if(isstring) begin
                    for(i = 1;i < 32;i = i + 1) begin
                        str[i] <= 8'b0;
                        pat[i] <= 8'b0;
                    end
                    pat_count <= 5'b0;
                    str[0] <= chardata;
                    str_count <= 6'b1;
                end
                if(ispattern) begin
                    for(i = 1;i < 32;i = i + 1) begin
                        pat[i] <= 8'b0;
                    end
                    pat[0] <= chardata;
                    pat_count <= 5'b1;
                end
                CARET_flag <= 1'b0;
                DOLLOR_flag <= 1'b0;
                STAR_flag <= 1'b0;
            end
            default : begin

            end
        endcase
    end
end

endmodule
