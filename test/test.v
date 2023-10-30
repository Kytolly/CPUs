module decoder3_8(
    input wire [2:0] in,
    output reg [7:0] out
);
    // always/initial 模块中只能用 reg型变量
    always @(*) begin
        case(in)
            3'h0: out = 8'h01;
            3'h1: out = 8'h02;
            3'h2: out = 8'h04;
            3'h3: out = 8'h08;
            3'h4: out = 8'h10;
            3'h5: out = 8'h20;
            3'h6: out = 8'h40;
            3'h7: out = 8'h80;
            // 避免lanth
            default: out = 8'h00;
        endcase
    end
endmodule
