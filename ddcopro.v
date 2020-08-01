module mux16(input wire[0:15] i,input wire[0:3] s,output wire o);
	wire  t0, t1;
	mux8 mux8_0(i[0:7],s[3],s[2],s[1],t0);
	mux8 mux8_1(i[8:15],s[3],s[2],s[1],t1);
	mux2 mux2_0(t0,t1,s[0],o);
endmodule

module invert4(input wire[0:3] i,output wire[0:3] o);
	invert invert_0(i[0],o[0]);
	invert invert_1(i[1],o[1]);
	invert invert_2(i[2],o[2]);
	invert invert_3(i[3],o[3]);
endmodule

module srl(input wire[15:0] in,input wire[3:0] shamt,output wire[15:0] out);
	wire[3:0] shamti;
	invert4 inv(shamt,shamti);
	mux16 m1({15'b0,in[15]},shamti,out[15]);
	mux16 m2({14'b0,in[15:14]},shamti,out[14]);
	mux16 m3({13'b0,in[15:13]},shamti,out[13]);
	mux16 m4({12'b0,in[15:12]},shamti,out[12]);
	mux16 m5({11'b0,in[15:11]},shamti,out[11]);
	mux16 m6({10'b0,in[15:10]},shamti,out[10]);
	mux16 m7({9'b0,in[15:9]},shamti,out[9]);
	mux16 m8({8'b0,in[15:8]},shamti,out[8]);
	mux16 m9({7'b0,in[15:7]},shamti,out[7]);
	mux16 m10({6'b0,in[15:6]},shamti,out[6]);
	mux16 m11({5'b0,in[15:5]},shamti,out[5]);
	mux16 m12({4'b0,in[15:4]},shamti,out[4]);
	mux16 m13({3'b0,in[15:3]},shamti,out[3]);
	mux16 m14({2'b0,in[15:2]},shamti,out[2]);
	mux16 m15({1'b0,in[15:1]},shamti,out[1]);
	mux16 m16(in,shamti,out[0]);
endmodule

module sll(input wire[15:0] in,input wire[3:0] shamt,output wire[15:0] out);
	mux16 m1(in,shamt,out[15]);
	mux16 m2({in[14:0],1'b0},shamt,out[14]);
	mux16 m3({in[13:0],2'b0},shamt,out[13]);
	mux16 m4({in[12:0],3'b0},shamt,out[12]);
	mux16 m5({in[11:0],4'b0},shamt,out[11]);
	mux16 m6({in[10:0],5'b0},shamt,out[10]);
	mux16 m7({in[9:0],6'b0},shamt,out[9]);
	mux16 m8({in[8:0],7'b0},shamt,out[8]);
	mux16 m9({in[7:0],8'b0},shamt,out[7]);
	mux16 m10({in[6:0],9'b0},shamt,out[6]);
	mux16 m11({in[5:0],10'b0},shamt,out[5]);
	mux16 m12({in[4:0],11'b0},shamt,out[4]);
	mux16 m13({in[3:0],12'b0},shamt,out[3]);
	mux16 m14({in[2:0],13'b0},shamt,out[2]);
	mux16 m15({in[1:0],14'b0},shamt,out[1]);
	mux16 m16({in[0],15'b0},shamt,out[0]);
endmodule

module sra(input wire[15:0] in,input wire[3:0] shamt,output wire[15:0] out);
	wire[3:0] shamti;
	invert4 inv(shamt,shamti);
	mux16 m1({in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15]},shamti,out[15]);
	mux16 m2({in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15:14]},shamti,out[14]);
	mux16 m3({in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15:13]},shamti,out[13]);
	mux16 m4({in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15:12]},shamti,out[12]);
	mux16 m5({in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15:11]},shamti,out[11]);
	mux16 m6({in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15:10]},shamti,out[10]);
	mux16 m7({in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15:9]},shamti,out[9]);
	mux16 m8({in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15:8]},shamti,out[8]);
	mux16 m9({in[15],in[15],in[15],in[15],in[15],in[15],in[15],in[15:7]},shamti,out[7]);
	mux16 m10({in[15],in[15],in[15],in[15],in[15],in[15],in[15:6]},shamti,out[6]);
	mux16 m11({in[15],in[15],in[15],in[15],in[15],in[15:5]},shamti,out[5]);
	mux16 m12({in[15],in[15],in[15],in[15],in[15:4]},shamti,out[4]);
	mux16 m13({in[15],in[15],in[15],in[15:3]},shamti,out[3]);
	mux16 m14({in[15],in[15],in[15:2]},shamti,out[2]);
	mux16 m15({in[15],in[15:1]},shamti,out[1]);
	mux16 m16(in,shamti,out[0]);
endmodule
