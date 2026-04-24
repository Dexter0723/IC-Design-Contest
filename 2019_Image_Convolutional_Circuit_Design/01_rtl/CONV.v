`timescale 1ns/10ps

module  CONV(
            input		clk,
            input		reset,
            output	reg busy,
            input		ready,

            output	reg [11:0]iaddr,
            input		[19:0]idata,		//Input Image data

            output	reg cwr,
            output	reg [11:0]caddr_wr,
            output 	reg [19:0]cdata_wr,

            output	reg crd,
            output	reg [11:0]caddr_rd,
            input	 	[19:0]cdata_rd,

            output  reg [2:0]csel
        );

parameter IDLE = 0,Layer_0 = 1,Layer_1 = 2,Layer_2 = 3,DONE = 4;
parameter Layer_0_IDLE = 0,Layer_0_READ = 1,Layer_0_Calculate = 2,Layer_0_MEM0_WRITE = 3,Layer_0_MEM1_WRITE = 4,Layer_0_DONE = 5;
parameter Layer_1_IDLE = 0,Layer_1_READ = 1,Layer_1_WRITE = 2,Layer_1_DONE = 3;
parameter Layer_2_IDLE = 0,IMG_0_READ = 1,IMG_1_READ = 2,Layer_2_IMG_0_WRITE = 4,Layer_2_IMG_1_WRITE = 5,Layer_2_DONE = 6;
reg [3:0] state,next_state;
integer i,j;

//Layer_0
reg [3:0] Layer_0_state,Layer_1_state,Layer_2_state;
reg signed [19:0] LB[8:0];
reg [11:0] Layer_0_pixel_count;
reg signed [39:0] img_0_con_sum,img_1_con_sum;
reg signed [39:0] img_0_acc_sum,img_1_acc_sum;
reg signed [19:0] img_0_bias_sum,img_1_bias_sum;
reg signed [19:0] img_0_relu_sum,img_1_relu_sum;
reg [3:0] LB_count;
reg Layer_0_cwr;
reg [11:0] Layer_0_caddr_wr,Layer_0_iaddr;
reg [19:0] Layer_0_cdata_wr;
reg [2:0] Layer_0_csel;
wire up_edge,down_edge,left_edge,right_edge;
wire signed [19:0] Kernel_0_[8:0];
wire signed [19:0] Kernel_1_[8:0];
wire signed [19:0] bias_0;
wire signed [19:0] bias_1;

//Layer_1
reg img;
reg [11:0] Layer_1_pixel_count;
reg [2:0] Layer_1_reg_count;
reg [19:0] Layer_1_max_value;
reg Layer_1_cwr,Layer_1_crd;
reg [11:0] Layer_1_caddr_wr,Layer_1_caddr_rd;
reg [19:0] Layer_1_cdata_wr;
reg [2:0] Layer_1_csel;

//Layer_2
reg Layer_2_cwr,Layer_2_crd;
reg [11:0] Layer_2_caddr_wr,Layer_2_caddr_rd;
reg [19:0] Layer_2_cdata_wr;
reg [2:0] Layer_2_csel;
reg [12:0] Layer_2_pixel_count;

always @(posedge clk or posedge reset) begin
    if(reset) begin
        state <= IDLE;
    end
    else begin
        state <= next_state;
    end
end

//Memory_control
always @(*) begin
    case(state)
        IDLE : begin
            iaddr = 12'b0;
            cwr = 0;
            caddr_wr = 12'b0;
            cdata_wr = 20'b0;
            crd = 0;
            caddr_rd = 12'b0;
            csel = 3'b0;
        end
        Layer_0 : begin
            iaddr    = Layer_0_iaddr;
            cwr      = Layer_0_cwr;
            caddr_wr = Layer_0_caddr_wr;
            cdata_wr = Layer_0_cdata_wr;
            csel     = Layer_0_csel;
        end
        Layer_1 : begin
            cwr      = Layer_1_cwr;
            caddr_wr = Layer_1_caddr_wr;
            cdata_wr = Layer_1_cdata_wr;
            crd      = Layer_1_crd;
            caddr_rd = Layer_1_caddr_rd;
            csel     = Layer_1_csel;
        end
        Layer_2 : begin
            cwr      = Layer_2_cwr;
            caddr_wr = Layer_2_caddr_wr;
            cdata_wr = Layer_2_cdata_wr;
            crd      = Layer_2_crd;
            caddr_rd = Layer_2_caddr_rd;
            csel     = Layer_2_csel;
        end
        default : begin
            iaddr = 12'b0;
            cwr = 0;
            caddr_wr = 12'b0;
            cdata_wr = 20'b0;
            crd = 0;
            caddr_rd = 12'b0;
            csel = 3'b0;
        end
    endcase
end

//Main_control
always @(*) begin
    case(state)
        IDLE : begin
            next_state = busy ? Layer_0 : IDLE;
        end
        Layer_0 : begin
            //convolutional
            next_state = (Layer_0_state == Layer_0_DONE) ? Layer_1 : Layer_0;
        end
        Layer_1 : begin
            //max-pooling
            next_state = (Layer_1_state == Layer_1_DONE) ? Layer_2 : Layer_1;
        end
        Layer_2 : begin
            //Flatten
            next_state = (Layer_2_state == Layer_2_DONE) ? DONE : Layer_2;
        end
        DONE : begin
            next_state = (ready) ? IDLE : DONE;
        end
        default : begin
            next_state = IDLE;
        end
    endcase
end

always @(posedge clk or posedge reset) begin
    if(reset) begin
        busy <= 0;
    end
    else begin
        busy <= (state == DONE) ? 0 : 1;
        case(state)
            IDLE : begin

            end
            Layer_0 : begin

            end
            Layer_1 : begin

            end
            Layer_2 : begin

            end
            DONE : begin
                busy <= 0;
            end
            default : begin
                busy <= 0;
            end
        endcase
    end
end

//Layer_0_design
assign up_edge = (Layer_0_pixel_count < 64) ? 1 : 0;
assign down_edge = (Layer_0_pixel_count > 4030) ? 1 : 0;
assign left_edge = (Layer_0_pixel_count[5:0] == 6'd0) ? 1 : 0; // 0,64,128...4032
assign right_edge = (Layer_0_pixel_count[5:0] == 6'd63) ? 1 : 0; // 63,127,191...4095

assign Kernel_0_[8] = 20'h0A89E;
assign Kernel_0_[7] = 20'h092D5;
assign Kernel_0_[6] = 20'h06D43;
assign Kernel_0_[5] = 20'h01004;
assign Kernel_0_[4] = 20'hF8F71;
assign Kernel_0_[3] = 20'hF6E54;
assign Kernel_0_[2] = 20'hFA6D7;
assign Kernel_0_[1] = 20'hFC834;
assign Kernel_0_[0] = 20'hFAC19;

assign Kernel_1_[8] = 20'hFDB55;
assign Kernel_1_[7] = 20'h02992;
assign Kernel_1_[6] = 20'hFC994;
assign Kernel_1_[5] = 20'h050FD;
assign Kernel_1_[4] = 20'h02F20;
assign Kernel_1_[3] = 20'h0202D;
assign Kernel_1_[2] = 20'h03BD7;
assign Kernel_1_[1] = 20'hFD369;
assign Kernel_1_[0] = 20'h05E68;

assign bias_0 = 20'h01310;
assign bias_1 = 20'hF7295;

//convolution + acc + bias + relu
always @(LB[0] or LB[1] or LB[2] or LB[3] or LB[4] or LB[5] or LB[6] or LB[7] or LB[8]) begin
    img_0_acc_sum = 0;
    img_1_acc_sum = 0;
    for(i = 0;i < 9;i = i + 1) begin
        img_0_con_sum = Kernel_0_[i] * LB[i];
        img_1_con_sum = Kernel_1_[i] * LB[i];
        img_0_acc_sum = img_0_con_sum + img_0_acc_sum;
        img_1_acc_sum = img_1_con_sum + img_1_acc_sum;
    end
    img_0_bias_sum = img_0_acc_sum[35:16] + bias_0 + img_0_acc_sum[15];
    img_1_bias_sum = img_1_acc_sum[35:16] + bias_1 + img_1_acc_sum[15];
    img_0_relu_sum = (img_0_bias_sum[19]) ? 0 : img_0_bias_sum;
    img_1_relu_sum = (img_1_bias_sum[19]) ? 0 : img_1_bias_sum;
end

/*always @(*) begin
    img_0_acc_sum = 40'b0;
    img_1_acc_sum = 40'b0;
    for(i = 0;i < 9;i = i + 1) begin
        img_0_con_sum = Kernel_0_[i] * LB[i];
        img_1_con_sum = Kernel_1_[i] * LB[i];
        img_0_acc_sum = img_0_con_sum + img_0_acc_sum;
        img_1_acc_sum = img_1_con_sum + img_1_acc_sum;
    end
    //39~32 integer 31~0 decimal -> 35~32 integer + 31~16 decimal and judge 15
    img_0_bias_sum = img_0_acc_sum[35:16] + bias_0 + img_0_acc_sum[15];
    img_1_bias_sum = img_1_acc_sum[35:16] + bias_1 + img_1_acc_sum[15];
    img_0_relu_sum = (img_0_bias_sum[19]) ? 0 : img_0_bias_sum;
    img_1_relu_sum = (img_1_bias_sum[19]) ? 0 : img_1_bias_sum;
end*/

//LB control and SRAM control
always @(posedge clk or posedge reset) begin
    if(reset) begin
        Layer_0_state <= Layer_0_IDLE;
        LB_count <= 4'b0;
        Layer_0_pixel_count <= 12'b0;
        img_0_acc_sum <= 40'b0;
        img_1_acc_sum <= 40'b0;
        img_0_bias_sum <= 20'b0;
        img_1_bias_sum <= 20'b0;
        /*img_0_relu_sum <= 20'b0;
        img_1_relu_sum <= 20'b0;*/
        Layer_0_cwr <= 0;
        Layer_0_caddr_wr <= 12'b0;
        Layer_0_cdata_wr <= 20'b0;
        Layer_0_csel <= 3'b0;
    end
    else begin
        case(Layer_0_state)
            Layer_0_IDLE : begin
                Layer_0_state <= (state == Layer_0) ? Layer_0_READ : Layer_0_IDLE;
                Layer_0_iaddr <= 12'b0;
                Layer_0_pixel_count <= 12'b0;
                LB_count <= 4'b0;
                Layer_0_csel <= 3'b000;
            end
            Layer_0_READ : begin
                if(left_edge) begin
                    Layer_0_state <= (LB_count == 9) ? Layer_0_Calculate : Layer_0_READ;
                    LB_count <= (LB_count == 9) ? 0 : LB_count + 1 ;
                    case(LB_count)//mid 4
                        9: begin
                            LB[8] <= (up_edge || left_edge) ? 20'b0 : idata;
                        end
                        8 : begin
                            Layer_0_iaddr <= Layer_0_pixel_count - 65;
                            LB[7] <= up_edge ? 20'b0 : idata;
                        end
                        7 : begin
                            Layer_0_iaddr <= Layer_0_pixel_count - 64;
                            LB[6] <= (up_edge || right_edge) ? 20'b0 : idata;
                        end
                        6 : begin
                            Layer_0_iaddr <= Layer_0_pixel_count - 63;
                            LB[5] <= left_edge ? 20'b0 : idata;
                        end
                        5 : begin
                            Layer_0_iaddr <= Layer_0_pixel_count - 1;
                            LB[4] <= idata;
                        end
                        4 : begin
                            Layer_0_iaddr <= Layer_0_pixel_count;
                            LB[3] <= right_edge ? 20'b0 : idata;
                        end
                        3 : begin
                            Layer_0_iaddr <= Layer_0_pixel_count + 1;
                            LB[2] <= (down_edge || left_edge) ? 20'b0 : idata;
                        end
                        2 : begin
                            Layer_0_iaddr <= Layer_0_pixel_count + 63;
                            LB[1] <= down_edge ? 20'b0 : idata;
                        end
                        1 : begin
                            Layer_0_iaddr <= Layer_0_pixel_count + 64;
                            LB[0] <= (down_edge || right_edge) ? 20'b0 : idata;
                        end
                        0 : begin
                            Layer_0_iaddr <= Layer_0_pixel_count + 65;
                        end
                    endcase
                end
                else begin
                    Layer_0_state <= (Layer_0_pixel_count == 4096) ? Layer_0_DONE : ((LB_count == 4) ? Layer_0_Calculate : Layer_0_READ);
                    Layer_0_state <= (LB_count == 3) ? Layer_0_Calculate : Layer_0_READ;
                    LB_count <= (LB_count == 3) ? 0 : LB_count + 1 ;
                    case(LB_count)//mid 4
                        3 : begin
                            LB[6] <= (up_edge || right_edge) ? 20'b0 : idata;
                        end
                        2 : begin
                            Layer_0_iaddr <= Layer_0_pixel_count -63;
                            LB[3] <= right_edge ? 20'b0 : idata;
                        end
                        1 : begin
                            Layer_0_iaddr <= Layer_0_pixel_count + 1;
                            LB[0] <= (down_edge || right_edge) ? 20'b0 : idata;
                        end
                        0 : begin
                            LB[8] <= LB[7];
                            LB[7] <= LB[6];
                            LB[5] <= LB[4];
                            LB[4] <= LB[3];
                            LB[2] <= LB[1];
                            LB[1] <= LB[0];
                            Layer_0_iaddr <= Layer_0_pixel_count + 65;
                        end
                        default : begin
                            Layer_0_iaddr <= 12'b0;
                        end
                    endcase
                end
            end
            Layer_0_Calculate : begin
                Layer_0_state <= Layer_0_MEM0_WRITE;
                Layer_0_cwr <= 1;
                Layer_0_csel <= 3'b001;
                Layer_0_cdata_wr <= img_0_relu_sum;
                Layer_0_caddr_wr <= Layer_0_pixel_count;
            end
            Layer_0_MEM0_WRITE : begin
                Layer_0_state <= Layer_0_MEM1_WRITE;
                Layer_0_csel <= 3'b010;
                Layer_0_cdata_wr <= img_1_relu_sum;
                Layer_0_caddr_wr <= Layer_0_pixel_count;
            end
            Layer_0_MEM1_WRITE : begin
                if(Layer_0_pixel_count == 12'd4095) begin
                    Layer_0_state <= Layer_0_DONE;
                end
                else begin
                    Layer_0_state <= Layer_0_READ;
                    Layer_0_pixel_count <= Layer_0_pixel_count + 1;
                    Layer_0_csel <= 3'b000;
                end
                Layer_0_cwr <= 1'b0;
            end
            Layer_0_DONE : begin
                Layer_0_cwr <= 1'b0;
                Layer_0_csel <= 3'b000;
            end
            default : begin
                Layer_0_iaddr <= 12'b0;
            end
        endcase
    end
end

//Layer_1_design
always @(posedge clk or posedge reset) begin
    if(reset) begin
        Layer_1_state <= Layer_1_IDLE;
        Layer_1_pixel_count <= 0;
        Layer_1_reg_count <= 0;
        img <= 0;
        Layer_1_cwr <= 0;
        Layer_1_crd <= 0;
        Layer_1_caddr_wr <= 12'b0;
        Layer_1_caddr_rd <= 12'b0;
        Layer_1_cdata_wr <= 20'b0;
        Layer_1_csel <= 3'b0;
        Layer_1_max_value <= 20'b0;
    end
    else begin
        case(Layer_1_state)
            Layer_1_IDLE : begin
                Layer_1_state <= (state == Layer_1) ? Layer_1_READ : Layer_1_IDLE;
                Layer_1_crd <= 1;
                Layer_1_csel <= 3'b001;
            end
            Layer_1_READ : begin
                Layer_1_state <= (Layer_1_reg_count == 5) ? Layer_1_WRITE : Layer_1_READ;
                case(Layer_1_reg_count)
                    0 : begin
                        Layer_1_caddr_rd <= Layer_1_pixel_count;
                    end
                    1 : begin
                        Layer_1_caddr_rd <= Layer_1_pixel_count + 1;
                    end
                    2 : begin
                        Layer_1_caddr_rd <= Layer_1_pixel_count + 64;
                    end
                    3 : begin
                        Layer_1_caddr_rd <= Layer_1_pixel_count + 65;
                    end
                    4 : begin
                        //rest time
                    end
                    5 : begin
                        Layer_1_cwr <= 1;
                        Layer_1_crd <= 0;
                        Layer_1_csel <= img ? 3'b100 : 3'b011;
                        Layer_1_cdata_wr <= Layer_1_max_value;
                    end
                    default : begin
                        Layer_1_caddr_rd <= 0;
                    end
                endcase
                Layer_1_reg_count <= (Layer_1_reg_count == 5) ? 0 : Layer_1_reg_count + 1;
                Layer_1_max_value <= (Layer_1_reg_count == 0) ? 20'b0 : ((Layer_1_max_value > cdata_rd) ? Layer_1_max_value : cdata_rd);
            end
            Layer_1_WRITE : begin
                Layer_1_state <= ((Layer_1_caddr_wr == 1023) && (img == 1)) ? Layer_1_DONE : Layer_1_READ;
                Layer_1_cwr <= 0;
                Layer_1_crd <= 1;
                Layer_1_csel <= (Layer_1_caddr_wr == 1023) ? ((~img) ? 3'b010 : 3'b001) : (img ? 3'b010 : 3'b001);
                Layer_1_pixel_count <= (Layer_1_caddr_wr == 1023) ? 0 : ((Layer_1_pixel_count[5:0] == 6'd62) ? Layer_1_pixel_count + 66 : Layer_1_pixel_count + 2);
                img <= (Layer_1_caddr_wr == 1023) ? ~img : img;
                Layer_1_caddr_wr <= (Layer_1_caddr_wr == 1023) ? 0 : Layer_1_caddr_wr + 1;
            end
            Layer_1_DONE : begin
                Layer_1_cwr <= 0;
                Layer_1_crd <= 0;
            end
            default : begin
                Layer_1_cwr <= 0;
                Layer_1_crd <= 0;
            end
        endcase
    end
end

//Layer_2_design
always @(posedge clk or posedge reset) begin
    if(reset) begin
        Layer_2_state <= Layer_2_IDLE;
        Layer_2_pixel_count <= 12'b0;
        Layer_2_cwr <= 0;
        Layer_2_crd <= 0;
        Layer_2_caddr_wr <= 12'b0;
        Layer_2_caddr_rd <= 12'b0;
        Layer_2_cdata_wr <= 20'b0;
        Layer_2_csel <= 3'b0;
        //img <= 0;
    end
    else begin
        case(Layer_2_state)
            IDLE : begin
                Layer_2_state <= (state == Layer_2) ? IMG_0_READ : Layer_2_IDLE;
                Layer_2_csel <= 3'b011;
                Layer_2_crd <= 1;
                Layer_2_caddr_rd <= Layer_2_pixel_count;
            end
            IMG_0_READ : begin
                Layer_2_state <= Layer_2_IMG_0_WRITE;
                Layer_2_csel <= 3'b101;
                Layer_2_cdata_wr <= cdata_rd;
                Layer_2_crd <= 0;
                Layer_2_cwr <= 1;
            end
            Layer_2_IMG_0_WRITE : begin
                Layer_2_state <= IMG_1_READ;
                Layer_2_csel <= 3'b100;
                Layer_2_caddr_wr <= Layer_2_caddr_wr + 1;
                Layer_2_caddr_rd <= Layer_2_pixel_count;
                Layer_2_crd <= 1;
                Layer_2_cwr <= 0;
            end
            IMG_1_READ : begin
                Layer_2_state <= Layer_2_IMG_1_WRITE;
                Layer_2_csel <= 3'b101;
                Layer_2_cdata_wr <= cdata_rd;
                Layer_2_crd <= 0;
                Layer_2_cwr <= 1;
            end
            Layer_2_IMG_1_WRITE : begin
                Layer_2_state <= (Layer_2_pixel_count == 12'd1023) ? Layer_2_DONE : IMG_0_READ;
                Layer_2_pixel_count <= Layer_2_pixel_count + 1;
                Layer_2_caddr_rd <= Layer_2_pixel_count + 1;
                Layer_2_csel <= 3'b011;
                Layer_2_crd <= 1;
                Layer_2_cwr <= 0;
                Layer_2_caddr_wr <= Layer_2_caddr_wr + 1;
            end
            Layer_2_DONE : begin
                Layer_2_cwr <= 0;
                Layer_2_crd <= 0;
            end
            default : begin
                Layer_2_cwr <= 0;
                Layer_2_crd <= 0;
            end
        endcase
    end
end

endmodule


