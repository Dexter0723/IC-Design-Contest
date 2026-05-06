module SET ( clk , rst, en, central, radius, mode, busy, valid, candidate );

input clk, rst;
input en;
input [23:0] central;
input [11:0] radius;
input [1:0] mode;
output reg busy;
output reg valid;
output reg [7:0] candidate;

reg [2:0] state,next_state;
parameter READ = 0,MODE0 = 1,MODE1 = 2,MODE2 = 3,MODE3 = 4,DONE = 5;

integer idx,jdx,kdx;
wire [3:0] xA,yA,xB,yB,xC,yC;
wire [3:0] rA,rB,rC;
wire [3:0] dx_A,dy_A;
wire [3:0] dx_B,dy_B;
wire [3:0] dx_C,dy_C;
wire in_A,in_B,in_C;
reg [3:0] x,y;

//Main control
always @(posedge clk or posedge rst) begin
    if(rst) begin
        state <= READ;
    end
    else begin
        state <= next_state;
    end
end

always @(*) begin
    case(state)
        READ : begin
            if(en) begin
                case(mode)
                    0 : begin
                        next_state <= MODE0;
                    end
                    1 : begin
                        next_state <= MODE1;
                    end
                    2 : begin
                        next_state <= MODE2;
                    end
                    3 : begin
                        next_state <= MODE3;
                    end
                    default : begin
                        next_state <= READ;
                    end
                endcase
            end
            else begin
                next_state <= READ;
            end
        end
        MODE0 : begin
            next_state <= valid ? DONE : MODE0;
        end
        MODE1 : begin
            next_state <= valid ? DONE : MODE1;
        end
        MODE2 : begin
            next_state <= valid ? DONE : MODE2;
        end
        MODE3 : begin
            next_state <= valid ? DONE : MODE3;
        end
        DONE : begin
            next_state <= READ;
        end
        default : begin
            next_state <= READ;
        end
    endcase
end

always @(posedge clk or posedge rst) begin
    if(rst) begin
        busy <= 0;
        valid <= 0;
    end
    else begin
        case(state)
            READ : begin
                busy <= 1;
            end
            MODE0 : begin
                valid <= (x == 4'd8 && y == 4'd8);
            end
            MODE1 : begin
                valid <= (x == 4'd8 && y == 4'd8);
            end
            MODE2 : begin
                valid <= (x == 4'd8 && y == 4'd8);
            end
            MODE3 : begin
                valid <= (x == 4'd8 && y == 4'd8);
            end
            DONE : begin
                valid <= 0;
                busy <= 0;
            end
        endcase
    end
end

//Calculate Area
assign xA = central[23:20];
assign yA = central[19:16];
assign xB = central[15:12];
assign yB = central[11:8];
assign xC = central[7:4];
assign yC = central[3:0];
assign rA = radius[11:8];
assign rB = radius[7:4];
assign rC = radius[3:0];

assign dx_A = (x > xA) ? (x - xA) : (xA - x);
assign dy_A = (y > yA) ? (y - yA) : (yA - y);
assign in_A = ((dx_A * dx_A) + (dy_A * dy_A)) <= (rA *rA);

assign dx_B = (x > xB) ? (x - xB) : (xB - x);
assign dy_B = (y > yB) ? (y - yB) : (yB - y);
assign in_B = ((dx_B * dx_B) + (dy_B * dy_B)) <= (rB *rB);

assign dx_C = (x > xC) ? (x - xC) : (xC - x);
assign dy_C = (y > yC) ? (y - yC) : (yC - y);
assign in_C = ((dx_C * dx_C) + (dy_C * dy_C)) <= (rC *rC);

always @(posedge clk or posedge rst) begin
    if(rst) begin
        x <= 4'd1;
        y <= 4'd1;
        candidate <= 8'b0;
    end
    else begin
        if(x == 4'd8) begin
            x <= (y == 4'd8) ? x :4'd1;
            y <= (y == 4'd8) ? y : y + 4'd1;
        end
        else begin
            x <= x + 4'd1;
        end
        case(state)
            READ : begin
                x <= 4'd1;
                y <= 4'd1;
            end
            MODE0 : begin
                candidate <= in_A ? candidate + 1 : candidate;
            end
            MODE1 : begin
                candidate <= (in_A && in_B) ? candidate + 1 : candidate;
            end
            MODE2 : begin
                candidate <= ((in_A && !in_B) || (!in_A && in_B)) ? candidate + 1 : candidate;
            end
            MODE3 : begin
                candidate <= ((in_A && in_B && !in_C) || (in_A && !in_B && in_C) || (!in_A && in_B && in_C)) ? candidate + 1 : candidate;
            end
            DONE : begin
                candidate <= 0;
            end
            default : begin
                candidate <= 0;
            end
        endcase
    end
end

endmodule
