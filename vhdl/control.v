module control(
	input clk_100,
	input BTNL,
	input BTNR,
	input BTNN,
	input BTNS,
	input BTNC,
	output [11:0] LED_IND
)

reg[11:0] curSelect;
reg[11:0] curActive;
//Make 12 note Blocks
parameter N = 'd12;



always @(posedge clk_100)
begin
	//Cycle through everything, get data if new, ack new data, do math
end
endmodule

