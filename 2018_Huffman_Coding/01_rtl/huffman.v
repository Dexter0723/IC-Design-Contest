module huffman(clk, reset, gray_valid,gray_data, CNT_valid, CNT1, CNT2, CNT3, CNT4, CNT5, CNT6,
               code_valid, HC1, HC2, HC3, HC4, HC5, HC6,M1, M2, M3, M4, M5, M6);

input clk;
input reset;
input gray_valid;
input [7:0] gray_data;
output CNT_valid;
output reg [7:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
output code_valid;
output reg [7:0] HC1, HC2, HC3, HC4, HC5, HC6;
output reg [7:0] M1, M2, M3, M4, M5, M6;

parameter IDLE = 0,statistics = 1,Initialization = 2,C1 = 3,C2 = 4,C3 = 5,C4 = 6,S4 = 7,S3 = 8,S2 = 9,S1 = 10,S0 = 11,DONE =12;
reg [3:0]state,next_state;

//Initialization
reg [6:0]count;
reg [6:0]A_[6:1]; //count
reg [15:0]I_[6:1];
reg [15:0]temp_I;
integer i,j;

//Combination
reg [6:0]combine_value;
reg [5:0]combie_mask_C1,combie_mask_C2,combie_mask_C3,combie_mask_C4;
reg [15:0]C1_[5:1],C2_[4:1],C3_[3:1],C4_[2:1];
reg [15:0]temp_C1,temp_C2,temp_C3,temp_C4;
reg [5:0]C1_upper,C1_lower;
reg [5:0]C2_upper,C2_lower;
reg [5:0]C3_upper,C3_lower;
reg [5:0]C4_upper,C4_lower;

//Split
reg [7:0]code_[6:1];
reg [7:0]M_[6:1];

assign CNT_valid = (state == C1);
assign code_valid = (state == DONE);

always @(posedge clk or posedge reset) begin
    if(reset) begin
        state <= IDLE;
    end
    else begin
        state <= next_state;
    end
end

//Initialization、Combination、Split
always @(*) begin
    case(state)
        IDLE : begin
            next_state = statistics;
        end
        statistics : begin
            next_state = (count == 100) ? Initialization : statistics;
        end
        Initialization : begin
            next_state = C1;
        end
        C1 : begin
            next_state = C2;
        end
        C2 : begin
            next_state = C3;
        end
        C3 : begin
            next_state = C4;
        end
        C4 : begin
            next_state = S4;
        end
        S4 : begin
            next_state = S3;
        end
        S3 : begin
            next_state = S2;
        end
        S2 : begin
            next_state = S1;
        end
        S1 : begin
            next_state = S0;
        end
        S0 : begin
            next_state = DONE;
        end
        DONE : begin
            next_state = IDLE;
        end
        default  : begin
            next_state = IDLE;
        end
    endcase
end

always @(posedge clk or posedge reset) begin
    if(reset) begin
        count <= 7'b0;
        for(i = 1;i < 7;i = i + 1) begin
            A_[i] <= 7'b0;
            code_[i] <= 8'b0;
            M_[i] <= 8'b0;
        end
    end
    else begin
        case(state)
            IDLE : begin
                count <= 7'b0;
                for(i = 1;i < 7;i = i + 1) begin
                    A_[i] <= 7'b0;
                    code_[i] <= 8'b0;
                    M_[i] <= 8'b0;
                    I_[i] = 16'b0;
                    C1_[i] = 10'b0;
                    C2_[i] = 10'b0;
                    C3_[i] = 10'b0;
                    C4_[i] = 10'b0;
                end
                combine_value = 7'b0;
                combie_mask_C1 = 6'b0;
                combie_mask_C2 = 6'b0;
                combie_mask_C3 = 6'b0;
                combie_mask_C4 = 6'b0;
                temp_I = 10'b0;
                temp_C1 = 10'b0;
                temp_C2 = 10'b0;
                temp_C3 = 10'b0;
                temp_C4 = 10'b0;
                C1_upper = 6'b0;
                C1_lower = 6'b0;
                C2_upper = 6'b0;
                C2_lower = 6'b0;
                C3_upper = 6'b0;
                C3_lower = 6'b0;
                C4_upper = 6'b0;
                C4_lower = 6'b0;
            end
            statistics : begin
                if(gray_valid) begin
                    count <= count + 1;
                    case(gray_data)
                        8'd1 :
                            A_[1] <= A_[1] + 1;
                        8'd2 :
                            A_[2] <= A_[2] + 1;
                        8'd3 :
                            A_[3] <= A_[3] + 1;
                        8'd4 :
                            A_[4] <= A_[4] + 1;
                        8'd5 :
                            A_[5] <= A_[5] + 1;
                        8'd6 :
                            A_[6] <= A_[6] + 1;
                    endcase
                end
            end
            Initialization : begin
                I_[1] = {6'b000001,A_[1],3'd1};
                I_[2] = {6'b000010,A_[2],3'd2};
                I_[3] = {6'b000100,A_[3],3'd3};
                I_[4] = {6'b001000,A_[4],3'd4};
                I_[5] = {6'b010000,A_[5],3'd5};
                I_[6] = {6'b100000,A_[6],3'd6};
                for(i = 1;i <= 6;i = i + 1) begin
                    for(j = i + 1;j <= 6;j = j + 1) begin
                        if(I_[i][9:3] == I_[j][9:3]) begin
                            if(I_[i][2:0] < I_[j][2:0]) begin
                                I_[i] = I_[i];
                                I_[j] = I_[j];
                            end
                            else begin
                                temp_I = I_[i];
                                I_[i] = I_[j];
                                I_[j] = temp_I;
                            end
                        end
                        if (I_[i][9:3] < I_[j][9:3]) begin
                            temp_I = I_[i];
                            I_[i] = I_[j];
                            I_[j] = temp_I;
                        end
                    end
                end
                C1_upper = I_[5][15:10];
                C1_lower = I_[6][15:10];
            end
            C1 : begin
                combine_value = I_[5][9:3] + I_[6][9:3];
                combie_mask_C1 = I_[5][15:10] + I_[6][15:10];
                C1_[1] = I_[1];
                C1_[2] = I_[2];
                C1_[3] = I_[3];
                C1_[4] = I_[4];
                C1_[5] = {combie_mask_C1,combine_value,3'd7};
                for(i = 1;i <= 5;i = i + 1) begin
                    for(j = i + 1;j <= 5;j = j + 1) begin
                        if(C1_[i][9:3] == C1_[j][9:3]) begin
                            if(C1_[i][2:0] < C1_[j][2:0]) begin
                                C1_[i] = C1_[i];
                                C1_[j] = C1_[j];
                            end
                            else begin
                                temp_C1 = C1_[i];
                                C1_[i] = C1_[j];
                                C1_[j] = temp_C1;
                            end
                        end
                        if (C1_[i][9:3] < C1_[j][9:3]) begin
                            temp_C1 = C1_[i];
                            C1_[i] = C1_[j];
                            C1_[j] = temp_C1;
                        end
                    end
                end
                C2_upper = C1_[4][15:10];
                C2_lower = C1_[5][15:10];
            end
            C2 : begin
                combine_value = C1_[4][9:3] + C1_[5][9:3];
                combie_mask_C2 = C1_[4][15:10] + C1_[5][15:10];
                C2_[1] = C1_[1];
                C2_[2] = C1_[2];
                C2_[3] = C1_[3];
                C2_[4] = {combie_mask_C2,combine_value,3'd7};
                for(i = 1;i <= 4;i = i + 1) begin
                    for(j = i + 1;j <= 4;j = j + 1) begin
                        if(C2_[i][9:3] == C2_[j][9:3]) begin
                            if(C2_[i][2:0] < C2_[j][2:0]) begin
                                C2_[i] = C2_[i];
                                C2_[j] = C2_[j];
                            end
                            else begin
                                temp_C2 = C2_[i];
                                C2_[i] = C2_[j];
                                C2_[j] = temp_C2;
                            end
                        end
                        if (C2_[i][9:3] < C2_[j][9:3]) begin
                            temp_C2 = C2_[i];
                            C2_[i] = C2_[j];
                            C2_[j] = temp_C2;
                        end
                    end
                end
                C3_upper = C2_[3][15:10];
                C3_lower = C2_[4][15:10];
            end
            C3 : begin
                combine_value = C2_[3][9:3] + C2_[4][9:3];
                combie_mask_C3 = C2_[3][15:10] + C2_[4][15:10];
                C3_[1] = C2_[1];
                C3_[2] = C2_[2];
                C3_[3] = {combie_mask_C3,combine_value,3'd7};
                for(i = 1;i <= 3;i = i + 1) begin
                    for(j = i + 1;j <= 3;j = j + 1) begin
                        if(C3_[i][9:3] == C3_[j][9:3]) begin
                            if(C3_[i][2:0] < C3_[j][2:0]) begin
                                C3_[i] = C3_[i];
                                C3_[j] = C3_[j];
                            end
                            else begin
                                temp_C3 = C3_[i];
                                C3_[i] = C3_[j];
                                C3_[j] = temp_C3;
                            end
                        end
                        if (C3_[i][9:3] < C3_[j][9:3]) begin
                            temp_C3 = C3_[i];
                            C3_[i] = C3_[j];
                            C3_[j] = temp_C3;
                        end
                    end
                end
                C4_upper = C3_[2][15:10];
                C4_lower = C3_[3][15:10];
            end
            C4 : begin
                combine_value = C3_[2][9:3] + C3_[3][9:3];
                combie_mask_C4 = C3_[2][15:10] + C3_[3][15:10];
                C4_[1] = C3_[1];
                C4_[2] = {combie_mask_C4,combine_value,3'd7};
                for(i = 1;i <= 2;i = i + 1) begin
                    for(j = i + 1;j <= 2;j = j + 1) begin
                        if(C4_[i][9:3] == C4_[j][9:3]) begin
                            if(C4_[i][2:0] < C4_[j][2:0]) begin
                                C4_[i] = C4_[i];
                                C4_[j] = C4_[j];
                            end
                            else begin
                                temp_C4 = C4_[i];
                                C4_[i] = C4_[j];
                                C4_[j] = temp_C4;
                            end
                        end
                        if (C4_[i][9:3] < C4_[j][9:3]) begin
                            temp_C4 = C4_[i];
                            C4_[i] = C4_[j];
                            C4_[j] = temp_C4;
                        end
                    end
                end
            end
            S4 : begin
                for(i = 1;i <= 6;i = i + 1) begin
                    if(C4_[1][i + 9] == 1) begin
                        M_[i] <= {M_[i][6:0],1'b1};
                        code_[i] <= {code_[i][6:0],1'b0};
                    end
                    else begin
                        M_[i] <= {M_[i][6:0],1'b1};
                        code_[i] <= {code_[i][6:0],1'b1};
                    end
                end
            end

            S3 : begin
                for(i = 1;i <= 6;i = i + 1) begin
                    if(C4_upper[i - 1] == 1) begin
                        M_[i] <= {M_[i][6:0],1'b1};
                        code_[i] <= {code_[i][6:0],1'b0};
                    end
                    else if(C4_lower[i - 1] == 1) begin
                        M_[i] <= {M_[i][6:0],1'b1};
                        code_[i] <= {code_[i][6:0],1'b1};
                    end
                    else begin
                        M_[i] <= M_[i];
                        code_[i] <= code_[i];
                    end
                end
            end
            S2 : begin
                for(i = 1;i <= 6;i = i + 1) begin
                    if(C3_upper[i - 1] == 1) begin
                        M_[i] <= {M_[i][6:0],1'b1};
                        code_[i] <= {code_[i][6:0],1'b0};
                    end
                    else if(C3_lower[i - 1] == 1) begin
                        M_[i] <= {M_[i][6:0],1'b1};
                        code_[i] <= {code_[i][6:0],1'b1};
                    end
                    else begin
                        M_[i] <= M_[i];
                        code_[i] <= code_[i];
                    end
                end
            end
            S1 : begin
                for(i = 1;i <= 6;i = i + 1) begin
                    if(C2_upper[i - 1] == 1) begin
                        M_[i] <= {M_[i][6:0],1'b1};
                        code_[i] <= {code_[i][6:0],1'b0};
                    end
                    else if(C2_lower[i - 1] == 1) begin
                        M_[i] <= {M_[i][6:0],1'b1};
                        code_[i] <= {code_[i][6:0],1'b1};
                    end
                    else begin
                        M_[i] <= M_[i];
                        code_[i] <= code_[i];
                    end
                end
            end
            S0 : begin
                for(i = 1;i <= 6;i = i + 1) begin
                    if(C1_upper[i - 1] == 1) begin
                        M_[i] <= {M_[i][6:0],1'b1};
                        code_[i] <= {code_[i][6:0],1'b0};
                    end
                    else if(C1_lower[i - 1] == 1) begin
                        M_[i] <= {M_[i][6:0],1'b1};
                        code_[i] <= {code_[i][6:0],1'b1};
                    end
                    else begin
                        M_[i] <= M_[i];
                        code_[i] <= code_[i];
                    end
                end
            end
            default  : begin

            end
        endcase
    end
end

always @(*) begin
    CNT1 = A_[1];
    CNT2 = A_[2];
    CNT3 = A_[3];
    CNT4 = A_[4];
    CNT5 = A_[5];
    CNT6 = A_[6];
    HC1 = code_[1];
    HC2 = code_[2];
    HC3 = code_[3];
    HC4 = code_[4];
    HC5 = code_[5];
    HC6 = code_[6];
    M1 = M_[1];
    M2 = M_[2];
    M3 = M_[3];
    M4 = M_[4];
    M5 = M_[5];
    M6 = M_[6];
end

endmodule
