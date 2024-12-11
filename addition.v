    module fulladder(a,b,c,sum,carry);

input a,b,c;
output sum,carry;

assign sum=a^b^c; 
assign carry=((a&b)|(b&c)|(c&a));

endmodule
  
module adder1(a,b,carry,combine);

input [15:0] a,b;
output [15:0] sum;
output carry;
output [16:0] combine;


wire [15:0] c;

fulladder blocks0(a[0],b[0],1'b0,sum[0],c[0]);
fulladder blocks1(a[1],b[1],c[0],sum[1],c[1]);
fulladder blocks2(a[2],b[2],c[1],sum[2],c[2]);
fulladder blocks3(a[3],b[3],c[2],sum[3],c[3]);
fulladder blocks4(a[4],b[4],c[3],sum[4],c[4]);
fulladder blocks5(a[5],b[5],c[4],sum[5],c[5]);
fulladder blocks6(a[6],b[6],c[5],sum[6],c[6]);
fulladder blocks7(a[7],b[7],c[6],sum[7],c[7]);
fulladder blocks8(a[8],b[8],c[7],sum[8],c[8]);
fulladder blocks9(a[9],b[9],c[8],sum[9],c[9]);
fulladder blocks10(a[10],b[10],c[9],sum[10],c[10]);
fulladder blocks11(a[11],b[11],c[10],sum[11],c[11]);
fulladder blocks12(a[12],b[12],c[11],sum[12],c[12]);
fulladder blocks13(a[13],b[13],c[12],sum[13],c[13]);
fulladder blocks14(a[14],b[14],c[13],sum[14],c[14]);
fulladder blocks15(a[15],b[15],c[14],sum[15],c[15]);

assign carry = c[15];
assign combine =  {c[15],sum};

endmodule