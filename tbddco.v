module andgate_tb;
reg[15:0] t_in1,t_in2;
reg[2:0] t_op;
wire[16:0] t_out;


ALU my_gate( .op(t_op), .in1(t_in1), .in2(t_in2), .out(t_out));

initial
begin

	$monitor(t_op,t_in1,t_in2,t_out);

	t_op = 3'b0;
	t_in1 = 16'b1001;
	t_in2 = 16'b1011;

	#5
	t_op = 1;
	t_in1 = 32891;
	t_in2 = 33256;

	#5
	t_op = 2;
	t_in1 = 2891;
	t_in2 = 3256;

	#5
	t_op = 4;
	t_in1 = 256;
	t_in2 = 3;

end
endmodule