module s_sqrt (
           input  wire        clk,
           input  wire        rst_n,
           input  wire        start,     // 運算啟動訊號
           input  wire [31:0] data_in,   // 16-bit 被開方數
           output reg  [15:0] data_out,  // 8-bit 平方根結果
           output reg         valid      // 運算完成訊號
       );

parameter IDLE = 0, CALC = 1,WAIT = 2, DONE = 3;

reg [1:0]  state;
reg [31:0] d_reg;    // 配合輸入擴充為 32-bit
reg [17:0] q_reg;    // 餘數暫存器
reg [15:0] r_reg;    // 配合輸出擴充為 16-bit
reg [4:0]  count;    // 32-bit 需要算 16 次，計數器擴充為 5-bit

wire [17:0] next_q;
wire [17:0] test_val;

// 將餘數暫存器左移 2 位，並補上 d_reg 的最高 2 位
assign next_q = {q_reg[15:0], d_reg[31:30]};

// 測試值 = (目前的結果 << 2) + 1
// 在硬體上就是把 r_reg 往左擺，並在最低位補 2'b01
assign test_val = {r_reg, 2'b01};

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state    <= IDLE;
        data_out <= 16'b0;
        valid    <= 1'b0;
        d_reg    <= 32'b0;
        q_reg    <= 18'b0;
        r_reg    <= 16'b0;
        count    <= 5'b0;
    end
    else begin
        case (state)
            IDLE: begin
                valid <= 1'b0;
                if (start) begin
                    d_reg <= data_in;
                    q_reg <= 18'b0;
                    r_reg <= 16'b0;
                    count <= 5'd16;   // 32-bit 輸入固定需要算 16 個週期
                    state <= CALC;
                end
            end

            CALC: begin
                if (count > 0) begin
                    if (next_q >= test_val) begin
                        q_reg <= next_q - test_val;
                        r_reg <= {r_reg[14:0], 1'b1};
                    end
                    else begin
                        q_reg <= next_q;
                        r_reg <= {r_reg[14:0], 1'b0};
                    end
                    d_reg <= {d_reg[29:0], 2'b00}; // 左移 2 位
                    count <= count - 1;
                end
                else begin
                    state <= DONE;
                end
            end

            DONE: begin
                data_out <= r_reg;
                valid    <= 1'b1;
                state    <= WAIT;
            end

            WAIT : begin
                state <= IDLE;
                d_reg <= data_in;
                valid <= 1'b0;
            end

            default:
                state <= IDLE;
        endcase
    end
end
endmodule
