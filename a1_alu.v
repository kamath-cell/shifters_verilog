`include"a1_lib.v"

module faS(input wire a,b,c,output wire sum,carry);

	wire y1,y2,y3,b1;
	
	xor3 xo(a,b,c,sum);
	
	and2 a1(a,b,y1);
	 
	and2 a2(b,c,y2);
	 
	and2 a3(c,a,y3);
	 
	or3 orq(y1,y2,y3,carry);

endmodule
	

module fa(input wire i0,i1,op0,op_0,op1,output wire o,cout);

	wire y1,o1,and1,or1
	wire[3:0] mux_1;
	
xor2 xor_2(i1,op0,y1);
	faS fas(y1,i0,op_0,o1,cout);

	and2 and2(i1,i0,and1);

	or2 or2(i1,i0,or1);

 	mux2 mux2(and1,or1,op0,mux_1);

 	mux4 mux4(o1,mux_1,op1,o);

endmodule
 

module alu(input wire [1:0] op,input wire [15:0] i0,i1,output wire [15:0] o,output wire cout);

	wire [14:0]c;	

	fa a1(i0[0],i1[0],op[0],op[0],op[1],o[0],c[0]);

	fa a2(i0[1],i1[1],op[0],c[0],op[1],o[1],c[1]);

	fa a3(i0[2],i1[2],op[0],c[1],op[1],o[2],c[2]);

	fa a4(i0[3],i1[3],op[0],c[2],op[1],o[3],c[3]);

	fa a5(i0[4],i1[4],op[0],c[3],op[1],o[4],c[4]);

	fa a6(i0[5],i1[5],op[0],c[4],op[1],o[5],c[5]);

	fa a7(i0[6],i1[6],op[0],c[5],op[1],o[6],c[6]);

	fa a8(i0[7],i1[7],op[0],c[6],op[1],o[7],c[7]);

	fa a9(i0[8],i1[8],op[0],c[7],op[1],o[8],c[8]);

	fa a10(i0[9],i1[9],op[0],c[8],op[1],o[9],c[9]);

	fa a11(i0[10],i1[10],op[0],c[9],op[1],o[10],c[10]);

	fa a12(i0[11],i1[11],op[0],c[10],op[1],o[11],c[11]);

	fa a13(i0[12],i1[12],op[0],c[11],op[1],o[12],c[12]);

	fa a14(i0[13],i1[13],op[0],c[12],op[1],o[13],c[13]);

	fa a15(i0[14],i1[14],op[0],c[13],op[1],o[14],c[14]);

	fa a16(i0[15],i1[15],op[0],c[14],op[1],o[15],cout);

endmodule

