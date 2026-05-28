module geofence ( clk,reset,X,Y,R,valid,is_inside);
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
input [10:0] R;
output valid;
output is_inside;
//reg valid;
//reg is_inside;

parameter IDLE = 0,DATA_IN = 1,SORT = 2,AREA_HEX = 3,AREA_TRI_abc = 4,AREA_TRI_s = 5,DONE = 15;
integer i,j;
reg [3:0]state,next_state;
reg [2:0]count,sort_count,area_hex_count,area_tri_count;
reg c_sqrt_flag,sa_sqrt_flag,bc_sqrt_flag;

reg signed [10:0] center_x;
reg signed [10:0] center_y;

wire signed [10:0] A_x;
wire signed [10:0] A_y;
wire signed [10:0] B_x;
wire signed [10:0] B_y;

reg signed [21:0] Area_hex;
reg [31:0] Area_tri;
reg [15:0] Area_tri_sa,Area_tri_bc;

reg signed [10:0] sort_X [5:0];
reg signed [10:0] sort_Y [5:0];
reg signed [10:0] sort_R [5:0];

wire signed [24:0] Cross;

wire signed [10:0] a,b,c;
wire signed [10:0] dx,dy;
wire [31:0] square;
wire [15:0] c_sqrt;

wire [15:0] s;
wire signed [16:0] sa,sb,sc;
wire [15:0]abs_sa,abs_sb,abs_sc;

wire [2:0]sort_index,area_hex_index,area_tri_index;

assign sort_index = ((sort_count + i) > 5) ? 5 : (sort_count + i);
assign area_hex_index = (area_hex_count == 5) ? 0 : (area_hex_count + 1);
assign area_tri_index = (area_tri_count == 5) ? 0 : (area_tri_count + 1);

assign A_x = (state == SORT) ? center_x - sort_X[sort_count] : ((state == AREA_HEX) ? sort_X[area_hex_count] : 0);
assign A_y = (state == SORT) ? center_y - sort_Y[sort_count] : ((state == AREA_HEX) ? sort_Y[area_hex_count] : 0);
assign B_x = (state == SORT) ? center_x - sort_X[sort_index] : ((state == AREA_HEX) ? sort_X[area_hex_index] : 0);
assign B_y = (state == SORT) ? center_y - sort_Y[sort_index] : ((state == AREA_HEX) ? sort_Y[area_hex_index] : 0);

assign Cross = A_x * B_y - A_y * B_x;

assign dx = sort_X[area_tri_count] - sort_X[area_tri_index];
assign dy = sort_Y[area_tri_count] - sort_Y[area_tri_index];
assign square = (dx * dx) + (dy * dy);

assign a = sort_R[area_tri_count];
assign b = sort_R[area_tri_index];
assign c = c_sqrt;

assign s = (a + b + c) >> 1;

assign sa = (s - a);
assign sb = (s - b);
assign sc = (s - c);

assign abs_sa = (sa < 0) ? -sa : sa;
assign abs_sb = (sb < 0) ? -sb : sb;
assign abs_sc = (sc < 0) ? -sc : sc;

wire [31:0] ssa,sbsc;

c_sqrt c_sqrt_inst (
           .clk(clk),
           .rst_n(~reset),
           .start((state == AREA_TRI_abc)),
           .data_in(square),
           .data_out(c_sqrt),
           .valid(c_sqrt_flag)
       );

assign ssa = s * abs_sa;
assign sbsc = abs_sb * abs_sc;

s_sqrt sa_sqrt_inst (
           .clk(clk),
           .rst_n(~reset),
           .start((state == AREA_TRI_s)),
           .data_in(ssa),
           .data_out(Area_tri_sa),
           .valid(sa_sqrt_flag)
       );

s_sqrt bc_sqrt_inst (
           .clk(clk),
           .rst_n(~reset),
           .start((state == AREA_TRI_s)),
           .data_in(sbsc),
           .data_out(Area_tri_bc),
           .valid(bc_sqrt_flag)
       );

assign valid = (state == DONE) ? 1 : 0;
assign is_inside = (state == DONE) ? ((Area_hex >= Area_tri) ? 1 : 0) : 0;

always @(posedge clk or posedge reset) begin
    if(reset) begin
        center_x <= 0;
        center_y <= 0;
        i <= 1;
        for(i = 0; i < 6; i = i + 1) begin
            sort_X[i] <= 0;
            sort_Y[i] <= 0;
        end
        count <= 0;
        sort_count <= 1;
        area_hex_count <= 0;
        area_tri_count <= 0;
        Area_hex <= 0;
        Area_tri <= 0;
    end
    else begin
        case(state)
            IDLE: begin
                center_x <= {1'b0,X};
                center_y <= {1'b0,Y};
                sort_X[count] <= {1'b0,X};
                sort_Y[count] <= {1'b0,Y};
                sort_R[count] <= R;
                count <= count + 1;
            end
            DATA_IN: begin
                sort_X[count] <= {1'b0,X};
                sort_Y[count] <= {1'b0,Y};
                sort_R[count] <= R;
                count <= count + 1;
            end
            SORT: begin
                if(Cross <= 0) begin
                    sort_X[sort_count] <= sort_X[sort_index];
                    sort_Y[sort_count] <= sort_Y[sort_index];
                    sort_R[sort_count] <= sort_R[sort_index];

                    sort_X[sort_index] <= sort_X[sort_count];
                    sort_Y[sort_index] <= sort_Y[sort_count];
                    sort_R[sort_index] <= sort_R[sort_count];
                end
                i <= (i == (5 - sort_count)) ? 1 : (i + 1);
                sort_count <= (i == (5 - sort_count)) ? (sort_count + 1) : sort_count;
            end
            AREA_HEX: begin
                Area_hex <= (area_hex_count == 5) ? ((Area_hex + Cross) >> 1) : (Area_hex + Cross);
                area_hex_count <= (area_hex_count == 5) ? area_hex_count : (area_hex_count + 1);
                i <= 1;
            end
            AREA_TRI_abc: begin

            end
            AREA_TRI_s : begin
                area_tri_count <= (area_tri_count == 5) ? area_tri_count : ((sa_sqrt_flag && bc_sqrt_flag) ? (area_tri_count + 1) : area_tri_count);
                Area_tri <= (sa_sqrt_flag && bc_sqrt_flag) ? (Area_tri + (Area_tri_bc * Area_tri_sa)) : Area_tri;
            end
            DONE : begin
                //center_x <= {1'b0,X};
                //center_y <= {1'b0,Y};
                //sort_X[count] <= {1'b0,X};
                //sort_Y[count] <= {1'b0,Y};
                //sort_R[count] <= R;
                count <= 0;
                sort_count <= 1;
                area_hex_count <= 0;
                area_tri_count <= 0;
                Area_hex <= 0;
                Area_tri <= 0;
                i <= 1;
            end
            default : begin

            end
        endcase
    end
end

always @(*) begin
    case(state)
        IDLE : begin
            next_state = DATA_IN;
        end
        DATA_IN : begin
            next_state = (count == 5) ? SORT : DATA_IN;
        end
        SORT : begin
            next_state = (sort_count == 5) ? AREA_HEX : SORT;
        end
        AREA_HEX : begin
            next_state = (area_hex_count == 5) ? AREA_TRI_abc : AREA_HEX;
        end
        AREA_TRI_abc : begin
            next_state = (c_sqrt_flag) ? AREA_TRI_s : AREA_TRI_abc;
        end
        AREA_TRI_s : begin
            next_state = (sa_sqrt_flag && bc_sqrt_flag) ? ((area_tri_count == 5) ? DONE : AREA_TRI_abc) : AREA_TRI_s;
        end
        DONE : begin
            next_state = IDLE;
        end
        default : begin
            next_state = IDLE;
        end
    endcase
end

always @(posedge clk or posedge reset) begin
    if(reset) begin
        state <= IDLE;
    end
    else begin
        state <= next_state;
    end
end

endmodule

