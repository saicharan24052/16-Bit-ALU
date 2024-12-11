module fulladder(a,b,c,sum,carry);

input a,b,c;
output sum,carry;

assign sum=a^b^c; 
assign carry=((a&b)|(b&c)|(c&a));

endmodule
  
module adder(a,b,carry,combine);

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
module mux16(a,b,s,out);
input [15:0] a,b;
input s;
output [15:0] out;
reg [15:0] out;
always @(a or b or s)
begin
if(s==0)
    out <= a;
else
    out <= b;
end    
endmodule

module Alogorithm(a,q,m,a2,q2);
input [15:0] a,q,m;
output [15:0] a2,q2;
 
wire [15:0] t,mr; 
 
reg [15:0] m1,a1,q1,q2;
reg car,car1,car2; 
reg [16:0] outt,outt1;
assign t = ~m;


 adder modee1(t,16'd1,mr);  

always @(a,q,m,mr)
begin 

     if (a[15] == 1'b1)                                    
        begin 
             {a1[15:0],q1[15:0]} <= {a[14:0],q[15:0],1'b0};
             m1 <= m;
      
        end                                                  
     else if (a[15] == 1'b0)                                 
        begin
            {a1[15:0],q1[15:0]} <= {a[14:0],q[15:0],1'b0};
             m1 <= mr; 
 
        end 
        
end  

adder modee(a1,m1,a2); 

always @(a2,q1)
begin        
       if (a2[15] == 1'b1)                                 
          begin 
               q2[15:0] <= {q1[15:1],1'b0};
          end                                             
       else if (a2[15] == 1'b0)
        begin
               q2[15:0] <= {q1[15:1],1'b1};
 
        end
      

end

endmodule



module non_restoring_division(dividend,divisior,rem,quo);

input [15:0] dividend;
input [14:0] divisior;
output [15:0] rem,quo; 

wire [15:0] out,out1;
wire [15:0] m;
wire [15:0] aa,aa1,aa2,aa3,aa4,aa5,aa6,aa7,aa8,aa9,aa10,aa11,aa12,aa13,aa14,aa15,aa16;
wire [15:0] qq,qq1,qq2,qq3,qq4,qq5,qq6,qq7,qq8,qq9,qq10,qq11,qq12,qq13,qq14,qq15,qq16;


assign m = {1'b0,divisior};
assign aa = 16'b0;
assign qq = dividend;  


Alogorithm mod1(aa,qq,m,aa1,qq1); 
 
Alogorithm mod2(aa1,qq1,m,aa2,qq2);
                     
Alogorithm mod3(aa2,qq2,m,aa3,qq3);

Alogorithm mod4(aa3,qq3,m,aa4,qq4);

Alogorithm mod5(aa4,qq4,m,aa5,qq5);

Alogorithm mod6(aa5,qq5,m,aa6,qq6);

Alogorithm mod7(aa6,qq6,m,aa7,qq7);

Alogorithm mod8(aa7,qq7,m,aa8,qq8);

Alogorithm mod9(aa8,qq8,m,aa9,qq9);

Alogorithm mod10(aa9,qq9,m,aa10,qq10); 

Alogorithm mod11(aa10,qq10,m,aa11,qq11);

Alogorithm mod12(aa11,qq11,m,aa12,qq12);

Alogorithm mod13(aa12,qq12,m,aa13,qq13);

Alogorithm mod14(aa13,qq13,m,aa14,qq14);

Alogorithm mod15(aa14,qq14,m,aa15,qq15);

Alogorithm mod16(aa15,qq15,m,aa16,qq16);

 

assign quo = qq16;

adder modee(aa16,m,out);  

mux16 mod67(aa16,out,aa16[15],out1);
  
  
  
assign rem = out1; 



endmodule
