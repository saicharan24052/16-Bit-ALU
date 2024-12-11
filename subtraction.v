module fullsubtractor(a,b,c,diff,borrow);

input a,b,c;
output diff,borrow; 

wire bf;

assign bf = 1^b;
assign diff = a ^ bf^c; 
assign borrow = ((a & bf) | (a & c) | (bf & c));

endmodule
module subtractor(a,b,diff,borrow,combine);

input [15:0] a,b;
output [15:0] diff;
output borrow;
output [16:0] combine;
wire [15:0] c;

fullsubtractor blocks0(a[0],b[0],1'b1,diff[0],c[0]);
fullsubtractor blocks1(a[1],b[1],c[0],diff[1],c[1]);
fullsubtractor blocks2(a[2],b[2],c[1],diff[2],c[2]);
fullsubtractor blocks3(a[3],b[3],c[2],diff[3],c[3]);
fullsubtractor blocks4(a[4],b[4],c[3],diff[4],c[4]);
fullsubtractor blocks5(a[5],b[5],c[4],diff[5],c[5]);
fullsubtractor blocks6(a[6],b[6],c[5],diff[6],c[6]);
fullsubtractor blocks7(a[7],b[7],c[6],diff[7],c[7]);
fullsubtractor blocks8(a[8],b[8],c[7],diff[8],c[8]);
fullsubtractor blocks9(a[9],b[9],c[8],diff[9],c[9]);
fullsubtractor blocks10(a[10],b[10],c[9],diff[10],c[10]);
fullsubtractor blocks11(a[11],b[11],c[10],diff[11],c[11]);
fullsubtractor blocks12(a[12],b[12],c[11],diff[12],c[12]);
fullsubtractor blocks13(a[13],b[13],c[12],diff[13],c[13]);
fullsubtractor blocks14(a[14],b[14],c[13],diff[14],c[14]);
fullsubtractor blocks15(a[15],b[15],c[14],diff[15],c[15]);

assign borrow = c[15];
assign combine =  {c[15],diff};

endmodule
