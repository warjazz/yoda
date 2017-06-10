 module note(clk, LUT,o_up, o_down, enable, agg_ack, agg_out)
  input clk, LUT, enable, agg_ack, o_up, o_down;
  output wire [11:0]agg_out;
  reg [11:0]index;
  reg [7:0]jump;
  initial index = 'd0;
  initial jump = 'd1;
  always @(posedge o_up)
    begin
      jump <= jump << 1;
    end
  always @(posedge o_down)
    begin
      jump <= jump >> 1;
      if (jump <= 0)
        begin
          jump <= 1;
        end
    end
  always @(posedge agg_ack)
    begin
      assign agg_out = 0;
    end
  always @(posedge clk)
    begin
      if (enable == 0)
        begin
        break;
        end
      assign agg_out = LUT[index];
      index <= index+jump;
    end
endmodule
