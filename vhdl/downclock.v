module slowClock(clk, reset, clk_out, clkTar);
input clk, reset, [27:0]clkTar;
output wire clk_out = 1'b0;
reg [27:0] counter;

always@(posedge reset or posedge clk)
begin
    if (reset == 1'b1)
        begin
            clk_out <= 0;
            counter <= 0;
        end
    else
        begin
            counter <= counter + 1;
            if ( counter == clkTar)
                begin
                    counter <= 0;
                    clk_out <= ~clk_out;
                end
        end
end
endmodule   
