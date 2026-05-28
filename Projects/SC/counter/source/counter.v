module counter(clk, nreset, y1, y0);
input clk, nreset;
output y1, y0;

reg y1;
reg y0;

always @(posedge clk or negedge nreset)
begin
  if (!nreset)
    {y1, y0} <= 2'b00;
  else
    {y1, y0} <= {y1, y0} + 2'b01;
end
endmodule
