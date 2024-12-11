
module halfadder(a,b,carry,sum);

input a,b;
output sum,carry;
                   
assign sum = a ^ b ;
assign carry = a&b ;

endmodule 

module mult(a,b,out);

input [15:0] a,b;
output [31:0] out;

wire [15:0]pp0,pp1,pp2,pp3,pp4,pp5,pp6,pp7,pp8,pp9,pp10,pp11,pp12,pp13,pp14,pp15;
wire [31:0] p; 



assign pp0 = {a[15]&b[0],a[14]&b[0],a[13]&b[0],a[12]&b[0],a[11]&b[0],a[10]&b[0],a[9]&b[0],a[8]&b[0],a[7]&b[0],a[6]&b[0],a[5]&b[0],a[4]&b[0],a[3]&b[0],a[2]&b[0],a[1]&b[0],a[0]&b[0]};
assign pp1 = {a[15]&b[1],a[14]&b[1],a[13]&b[1],a[12]&b[1],a[11]&b[1],a[10]&b[1],a[9]&b[1],a[8]&b[1],a[7]&b[1],a[6]&b[1],a[5]&b[1],a[4]&b[1],a[3]&b[1],a[2]&b[1],a[1]&b[1],a[0]&b[1]};
assign pp2 = {a[15]&b[2],a[14]&b[2],a[13]&b[2],a[12]&b[2],a[11]&b[2],a[10]&b[2],a[9]&b[2],a[8]&b[2],a[7]&b[2],a[6]&b[2],a[5]&b[2],a[4]&b[2],a[3]&b[2],a[2]&b[2],a[1]&b[2],a[0]&b[2]};
assign pp3 = {a[15]&b[3],a[14]&b[3],a[13]&b[3],a[12]&b[3],a[11]&b[3],a[10]&b[3],a[9]&b[3],a[8]&b[3],a[7]&b[3],a[6]&b[3],a[5]&b[3],a[4]&b[3],a[3]&b[3],a[2]&b[3],a[1]&b[3],a[0]&b[3]};
assign pp4 = {a[15]&b[4],a[14]&b[4],a[13]&b[4],a[12]&b[4],a[11]&b[4],a[10]&b[4],a[9]&b[4],a[8]&b[4],a[7]&b[4],a[6]&b[4],a[5]&b[4],a[4]&b[4],a[3]&b[4],a[2]&b[4],a[1]&b[4],a[0]&b[4]};
assign pp5 = {a[15]&b[5],a[14]&b[5],a[13]&b[5],a[12]&b[5],a[11]&b[5],a[10]&b[5],a[9]&b[5],a[8]&b[5],a[7]&b[5],a[6]&b[5],a[5]&b[5],a[4]&b[5],a[3]&b[5],a[2]&b[5],a[1]&b[5],a[0]&b[5]};
assign pp6 = {a[15]&b[6],a[14]&b[6],a[13]&b[6],a[12]&b[6],a[11]&b[6],a[10]&b[6],a[9]&b[6],a[8]&b[6],a[7]&b[6],a[6]&b[6],a[5]&b[6],a[4]&b[6],a[3]&b[6],a[2]&b[6],a[1]&b[6],a[0]&b[6]};
assign pp7 = {a[15]&b[7],a[14]&b[7],a[13]&b[7],a[12]&b[7],a[11]&b[7],a[10]&b[7],a[9]&b[7],a[8]&b[7],a[7]&b[7],a[6]&b[7],a[5]&b[7],a[4]&b[7],a[3]&b[7],a[2]&b[7],a[1]&b[7],a[0]&b[7]};
assign pp8 = {a[15]&b[8],a[14]&b[8],a[13]&b[8],a[12]&b[8],a[11]&b[8],a[10]&b[8],a[9]&b[8],a[8]&b[8],a[7]&b[8],a[6]&b[8],a[5]&b[8],a[4]&b[8],a[3]&b[8],a[2]&b[8],a[1]&b[8],a[0]&b[8]};
assign pp9 = {a[15]&b[9],a[14]&b[9],a[13]&b[9],a[12]&b[9],a[11]&b[9],a[10]&b[9],a[9]&b[9],a[8]&b[9],a[7]&b[9],a[6]&b[9],a[5]&b[9],a[4]&b[9],a[3]&b[9],a[2]&b[9],a[1]&b[9],a[0]&b[9]};
assign pp10 = {a[15]&b[10],a[14]&b[10],a[13]&b[10],a[12]&b[10],a[11]&b[10],a[10]&b[10],a[9]&b[10],a[8]&b[10],a[7]&b[10],a[6]&b[10],a[5]&b[10],a[4]&b[10],a[3]&b[10],a[2]&b[10],a[1]&b[10],a[0]&b[10]};
assign pp11 = {a[15]&b[11],a[14]&b[11],a[13]&b[11],a[12]&b[11],a[11]&b[11],a[10]&b[11],a[9]&b[11],a[8]&b[11],a[7]&b[11],a[6]&b[11],a[5]&b[11],a[4]&b[11],a[3]&b[11],a[2]&b[11],a[1]&b[11],a[0]&b[11]};
assign pp12 = {a[15]&b[12],a[14]&b[12],a[13]&b[12],a[12]&b[12],a[11]&b[12],a[10]&b[12],a[9]&b[12],a[8]&b[12],a[7]&b[12],a[6]&b[12],a[5]&b[12],a[4]&b[12],a[3]&b[12],a[2]&b[12],a[1]&b[12],a[0]&b[12]};
assign pp13 = {a[15]&b[13],a[14]&b[13],a[13]&b[13],a[12]&b[13],a[11]&b[13],a[10]&b[13],a[9]&b[13],a[8]&b[13],a[7]&b[13],a[6]&b[13],a[5]&b[13],a[4]&b[13],a[3]&b[13],a[2]&b[13],a[1]&b[13],a[0]&b[13]};
assign pp14 = {a[15]&b[14],a[14]&b[14],a[13]&b[14],a[12]&b[14],a[11]&b[14],a[10]&b[14],a[9]&b[14],a[8]&b[14],a[7]&b[14],a[6]&b[14],a[5]&b[14],a[4]&b[14],a[3]&b[14],a[2]&b[14],a[1]&b[14],a[0]&b[14]};
assign pp15 = {a[15]&b[15],a[14]&b[15],a[13]&b[15],a[12]&b[15],a[11]&b[15],a[10]&b[15],a[9]&b[15],a[8]&b[15],a[7]&b[15],a[6]&b[15],a[5]&b[15],a[4]&b[15],a[3]&b[15],a[2]&b[15],a[1]&b[15],a[0]&b[15]};



assign p[0] = pp0[0];
halfadder mod0(pp0[1],pp1[0],carry1,p[1]);
fulladder mod1(pp0[2],pp1[1],pp2[0],carry2,sum1);
fulladder mod2(pp0[3],pp1[2],pp2[1],carry3,sum2);
fulladder mod3(pp0[4],pp1[3],pp2[2],carry4,sum3);
fulladder mod4(pp0[5],pp1[4],pp2[3],carry5,sum4);
fulladder mod5(pp0[6],pp1[5],pp2[4],carry6,sum5);
fulladder mod6(pp0[7],pp1[6],pp2[5],carry7,sum6);
fulladder mod7(pp0[8],pp1[7],pp2[6],carry8,sum7);
fulladder mod8(pp0[9],pp1[8],pp2[7],carry9,sum8);
fulladder mod9(pp0[10],pp1[9],pp2[8],carry10,sum9);
fulladder mod10(pp0[11],pp1[10],pp2[9],carry11,sum10);
fulladder mod11(pp0[12],pp1[11],pp2[10],carry12,sum11);
fulladder mod12(pp0[13],pp1[12],pp2[11],carry13,sum12);
fulladder mod13(pp0[14],pp1[13],pp2[12],carry14,sum13);
fulladder mod14(pp0[15],pp1[14],pp2[13],carry15,sum14); 


halfadder mod15(sum1,carry1,carry16,p[2]);
fulladder mod16(sum2,carry2,pp3[0],carry17,sum15);  
fulladder mod17(sum3,carry3,pp3[1],carry18,sum16);                                            
fulladder mod18(sum4,carry4,pp3[2],carry19,sum17);
fulladder mod19(sum5,carry5,pp3[3],carry20,sum18);
fulladder mod20(sum6,carry6,pp3[4],carry21,sum19);
fulladder mod21(sum7,carry7,pp3[5],carry22,sum20);
fulladder mod22(sum8,carry8,pp3[6],carry23,sum21);
fulladder mod23(sum9,carry9,pp3[7],carry24,sum22);
fulladder mod24(sum10,carry10,pp3[8],carry25,sum23);
fulladder mod25(sum11,carry11,pp3[9],carry26,sum24);
fulladder mod26(sum12,carry12,pp3[10],carry27,sum25);
fulladder mod27(sum13,carry13,pp3[11],carry28,sum26);
fulladder mod28(sum14,carry14,pp3[12],carry29,sum27);
fulladder mod29(pp1[15],pp2[14],carry15,carry30,sum28); 


halfadder mod30(sum15,carry16,carry31,p[3]);
fulladder mod31(sum16,carry17,pp4[0],carry32,sum29);  
fulladder mod32(sum17,carry18,pp4[1],carry33,sum30);
fulladder mod33(sum18,carry19,pp4[2],carry34,sum31);
fulladder mod34(sum19,carry20,pp4[3],carry35,sum32);
fulladder mod35(sum20,carry21,pp4[4],carry36,sum33);
fulladder mod36(sum21,carry22,pp4[5],carry37,sum34);
fulladder mod37(sum22,carry23,pp4[6],carry38,sum35);
fulladder mod38(sum23,carry24,pp4[7],carry39,sum36);
fulladder mod39(sum24,carry25,pp4[8],carry40,sum37);
fulladder mod40(sum25,carry26,pp4[9],carry41,sum38);
fulladder mod41(sum26,carry27,pp4[10],carry42,sum39);
fulladder mod42(sum27,carry28,pp4[11],carry43,sum40);
fulladder mod43(sum28,carry29,pp3[13],carry44,sum41);
fulladder mod44(pp2[15],pp3[14],carry30,carry45,sum42);

halfadder mod45(sum29,carry31,carry46,p[4]);
fulladder mod46(sum30,carry32,pp5[0],carry47,sum43);  
fulladder mod47(sum31,carry33,pp5[1],carry48,sum44);
fulladder mod48(sum32,carry34,pp5[2],carry49,sum45);
fulladder mod49(sum33,carry35,pp5[3],carry50,sum46);
fulladder mod50(sum34,carry36,pp5[4],carry51,sum47);
fulladder mod51(sum35,carry37,pp5[5],carry52,sum48);
fulladder mod52(sum36,carry38,pp5[6],carry53,sum49);
fulladder mod53(sum37,carry39,pp5[7],carry54,sum50);
fulladder mod54(sum38,carry40,pp5[8],carry55,sum51);
fulladder mod55(sum39,carry41,pp5[9],carry56,sum52);
fulladder mod56(sum40,carry42,pp5[10],carry57,sum53);
fulladder mod57(sum41,carry43,pp4[12],carry58,sum54);
fulladder mod58(sum42,carry44,pp4[13],carry59,sum55);
fulladder mod59(pp3[15],pp4[14],carry45,carry60,sum56);

halfadder mod60(sum43,carry46,carry61,p[5]);
fulladder mod61(sum44,carry47,pp6[0],carry62,sum57);  
fulladder mod62(sum45,carry48,pp6[1],carry63,sum58);
fulladder mod63(sum46,carry49,pp6[2],carry64,sum59);
fulladder mod64(sum47,carry50,pp6[3],carry65,sum60);
fulladder mod65(sum48,carry51,pp6[4],carry66,sum61);
fulladder mod66(sum49,carry52,pp6[5],carry67,sum62);
fulladder mod67(sum50,carry53,pp6[6],carry68,sum63);
fulladder mod68(sum51,carry54,pp6[7],carry69,sum64);
fulladder mod69(sum52,carry55,pp6[8],carry70,sum65);
fulladder mod70(sum53,carry56,pp6[9],carry71,sum66);
fulladder mod71(sum54,carry57,pp5[11],carry72,sum67);
fulladder mod72(sum55,carry58,pp5[12],carry73,sum68);
fulladder mod73(sum56,carry59,pp5[13],carry74,sum69);
fulladder mod74(pp4[15],pp5[14],carry60,carry75,sum70);

 
halfadder mod75(sum57,carry61,carry76,p[6]);
fulladder mod76(sum58,carry62,pp7[0],carry77,sum71);  
fulladder mod77(sum59,carry63,pp7[1],carry78,sum72);
fulladder mod78(sum60,carry64,pp7[2],carry79,sum73);
fulladder mod79(sum61,carry65,pp7[3],carry80,sum74);
fulladder mod80(sum62,carry66,pp7[4],carry81,sum75);
fulladder mod81(sum63,carry67,pp7[5],carry82,sum76);
fulladder mod82(sum64,carry68,pp7[6],carry83,sum77);
fulladder mod83(sum65,carry69,pp7[7],carry84,sum78);
fulladder mod84(sum66,carry70,pp7[8],carry85,sum79);
fulladder mod85(sum67,carry71,pp6[10],carry86,sum80);
fulladder mod86(sum68,carry72,pp6[11],carry87,sum81);
fulladder mod87(sum69,carry73,pp6[12],carry88,sum82);
fulladder mod88(sum70,carry74,pp6[13],carry89,sum83);
fulladder mod89(pp5[15],pp6[14],carry75,carry90,sum84);

halfadder mod90(sum71,carry76,carry91,p[7]);
fulladder mod91(sum72,carry77,pp8[0],carry92,sum85);  
fulladder mod92(sum73,carry78,pp8[1],carry93,sum86);
fulladder mod93(sum74,carry79,pp8[2],carry94,sum87);
fulladder mod94(sum75,carry80,pp8[3],carry95,sum88);
fulladder mod95(sum76,carry81,pp8[4],carry96,sum89);
fulladder mod96(sum77,carry82,pp8[5],carry97,sum90);
fulladder mod97(sum78,carry83,pp8[6],carry98,sum91);
fulladder mod98(sum79,carry84,pp8[7],carry99,sum92);
fulladder mod99(sum80,carry85,pp7[9],carry100,sum93);
fulladder mod100(sum81,carry86,pp7[10],carry101,sum94);
fulladder mod101(sum82,carry87,pp7[11],carry102,sum95);
fulladder mod102(sum83,carry88,pp7[12],carry103,sum96);
fulladder mod103(sum84,carry89,pp7[13],carry104,sum97);
fulladder mod104(pp6[15],pp7[14],carry90,carry105,sum98);


halfadder mod105(sum85,carry91,carry106,p[8]);
fulladder mod106(sum86,carry92,pp9[0],carry107,sum99);  
fulladder mod107(sum87,carry93,pp9[1],carry108,sum100);
fulladder mod108(sum88,carry94,pp9[2],carry109,sum101);
fulladder mod109(sum89,carry95,pp9[3],carry110,sum102);
fulladder mod110(sum90,carry96,pp9[4],carry111,sum103);
fulladder mod111(sum91,carry97,pp9[5],carry112,sum104);
fulladder mod112(sum92,carry98,pp9[6],carry113,sum105);
fulladder mod113(sum93,carry99,pp8[8],carry114,sum106);
fulladder mod114(sum94,carry100,pp8[9],carry115,sum107);
fulladder mod115(sum95,carry101,pp8[10],carry116,sum108);
fulladder mod116(sum96,carry102,pp8[11],carry117,sum109);
fulladder mod117(sum97,carry103,pp8[12],carry118,sum110);
fulladder mod118(sum98,carry104,pp8[13],carry119,sum111);
fulladder mod119(pp7[15],pp8[14],carry105,carry120,sum112);


halfadder mod120(sum99,carry106,carry121,p[9]);
fulladder mod121(sum100,carry107,pp10[0],carry122,sum113);  
fulladder mod122(sum101,carry108,pp10[1],carry123,sum114);
fulladder mod123(sum102,carry109,pp10[2],carry124,sum115);
fulladder mod124(sum103,carry110,pp10[3],carry125,sum116);
fulladder mod125(sum104,carry111,pp10[4],carry126,sum117);
fulladder mod126(sum105,carry112,pp10[5],carry127,sum118);
fulladder mod127(sum106,carry113,pp9[7],carry128,sum119);
fulladder mod128(sum107,carry114,pp9[8],carry129,sum120);
fulladder mod129(sum108,carry115,pp9[9],carry130,sum121);
fulladder mod130(sum109,carry116,pp9[10],carry131,sum122);
fulladder mod131(sum110,carry117,pp9[11],carry132,sum123);
fulladder mod132(sum111,carry118,pp9[12],carry133,sum124);
fulladder mod133(sum112,carry119,pp9[13],carry134,sum125);
fulladder mod134(pp8[15],pp9[14],carry120,carry135,sum126);

halfadder mod135(sum113,carry121,carry136,p[10]);
fulladder mod136(sum114,carry122,pp11[0],carry137,sum127);  
fulladder mod137(sum115,carry123,pp11[1],carry138,sum128);
fulladder mod138(sum116,carry124,pp11[2],carry139,sum129);
fulladder mod139(sum117,carry125,pp11[3],carry140,sum130);
fulladder mod140(sum118,carry126,pp11[4],carry141,sum131);
fulladder mod141(sum119,carry127,pp10[6],carry142,sum132);
fulladder mod142(sum120,carry128,pp10[7],carry143,sum133);
fulladder mod143(sum121,carry129,pp10[8],carry144,sum134);
fulladder mod144(sum122,carry130,pp10[9],carry145,sum135);
fulladder mod145(sum123,carry131,pp10[10],carry146,sum136);
fulladder mod146(sum124,carry132,pp10[11],carry147,sum137);
fulladder mod147(sum125,carry133,pp10[12],carry148,sum138);
fulladder mod148(sum126,carry134,pp10[13],carry149,sum139);
fulladder mod149(pp9[15],pp10[14],carry135,carry150,sum140);

halfadder mod150(sum127,carry136,carry151,p[11]);
fulladder mod151(sum128,carry137,pp12[0],carry152,sum141);  
fulladder mod152(sum129,carry138,pp12[1],carry153,sum142);
fulladder mod153(sum130,carry139,pp12[2],carry154,sum143);
fulladder mod154(sum131,carry140,pp12[3],carry155,sum144);
fulladder mod155(sum132,carry141,pp11[5],carry156,sum145);
fulladder mod156(sum133,carry142,pp11[6],carry157,sum146);
fulladder mod240(sum134,carry143,pp11[7],carry158,sum147);
fulladder mod157(sum135,carry144,pp11[8],carry159,sum148);
fulladder mod158(sum136,carry145,pp11[9],carry160,sum149);
fulladder mod159(sum137,carry146,pp11[10],carry161,sum150);
fulladder mod160(sum138,carry147,pp11[11],carry162,sum151);
fulladder mod161(sum139,carry148,pp11[12],carry163,sum152);
fulladder mod162(sum140,carry149,pp11[13],carry164,sum153);
fulladder mod163(pp10[15],pp11[14],carry150,carry165,sum154);


halfadder mod164(sum141,carry151,carry166,p[12]);
fulladder mod165(sum142,carry152,pp13[0],carry167,sum155);  
fulladder mod166(sum143,carry153,pp13[1],carry168,sum156);
fulladder mod167(sum144,carry154,pp13[2],carry169,sum157);
fulladder mod168(sum145,carry155,pp12[4],carry170,sum158);
fulladder mod169(sum146,carry156,pp12[5],carry171,sum159);
fulladder mod170(sum147,carry157,pp12[6],carry172,sum160);
fulladder mod171(sum148,carry158,pp12[7],carry173,sum161);
fulladder mod172(sum149,carry159,pp12[8],carry174,sum162);
fulladder mod173(sum150,carry160,pp12[9],carry175,sum163);
fulladder mod174(sum151,carry161,pp12[10],carry176,sum164);
fulladder mod175(sum152,carry162,pp12[11],carry177,sum165);
fulladder mod176(sum153,carry163,pp12[12],carry178,sum166);
fulladder mod177(sum154,carry164,pp12[13],carry179,sum167);
fulladder mod178(pp11[15],pp12[14],carry165,carry180,sum168);

halfadder mod179(sum155,carry166,carry181,p[13]);
fulladder mod180(sum156,carry167,pp14[0],carry182,sum169);  
fulladder mod181(sum157,carry168,pp14[1],carry183,sum170);
fulladder mod182(sum158,carry169,pp13[3],carry184,sum171);
fulladder mod183(sum159,carry170,pp13[4],carry185,sum172);
fulladder mod184(sum160,carry171,pp13[5],carry186,sum173);
fulladder mod185(sum161,carry172,pp13[6],carry187,sum174);
fulladder mod186(sum162,carry173,pp13[7],carry188,sum175);
fulladder mod187(sum163,carry174,pp13[8],carry189,sum176);
fulladder mod188(sum164,carry175,pp13[9],carry190,sum177);
fulladder mod189(sum165,carry176,pp13[10],carry191,sum178);
fulladder mod190(sum166,carry177,pp13[11],carry192,sum179);
fulladder mod191(sum167,carry178,pp13[12],carry193,sum180);
fulladder mod192(sum168,carry179,pp13[13],carry194,sum181);
fulladder mod193(pp12[15],pp13[14],carry180,carry195,sum182);

halfadder mod194(sum169,carry181,carry196,p[14]);
fulladder mod195(sum170,carry182,pp15[0],carry197,sum183);  
fulladder mod196(sum171,carry183,pp14[2],carry198,sum184);
fulladder mod197(sum172,carry184,pp14[3],carry199,sum185);
fulladder mod198(sum173,carry185,pp14[4],carry200,sum186);
fulladder mod199(sum174,carry186,pp14[5],carry201,sum187);
fulladder mod200(sum175,carry187,pp14[6],carry202,sum188);
fulladder mod201(sum176,carry188,pp14[7],carry203,sum189);
fulladder mod202(sum177,carry189,pp14[8],carry204,sum190);
fulladder mod203(sum178,carry190,pp14[9],carry205,sum191);
fulladder mod204(sum179,carry191,pp14[10],carry206,sum192);
fulladder mod205(sum180,carry192,pp14[11],carry207,sum193);
fulladder mod206(sum181,carry193,pp14[12],carry208,sum194);
fulladder mod207(sum182,carry194,pp14[13],carry209,sum195);
fulladder mod208(pp13[15],pp14[14],carry195,carry210,sum196);

halfadder mod209(sum183,carry196,carry211,p[15]);
fulladder mod210(sum184,carry197,pp15[1],carry212,sum197);  
fulladder mod211(sum185,carry198,pp15[2],carry213,sum198);
fulladder mod212(sum186,carry199,pp15[3],carry214,sum199);
fulladder mod213(sum187,carry200,pp15[4],carry215,sum200);
fulladder mod214(sum188,carry201,pp15[5],carry216,sum201);
fulladder mod215(sum189,carry202,pp15[6],carry217,sum202);
fulladder mod216(sum190,carry203,pp15[7],carry218,sum203);
fulladder mod217(sum191,carry204,pp15[8],carry219,sum204);
fulladder mod218(sum192,carry205,pp15[9],carry220,sum205);
fulladder mod219(sum193,carry206,pp15[10],carry221,sum206);
fulladder mod220(sum194,carry207,pp15[11],carry222,sum207);
fulladder mod221(sum195,carry208,pp15[12],carry223,sum208);
fulladder mod222(sum196,carry209,pp15[13],carry224,sum209);
fulladder mod223(pp14[15],pp15[14],carry210,carry225,sum210);

halfadder mod224(sum197,carry211,carry226,p[16]);
fulladder mod225(sum198,carry212,carry226,carry227,p[17]);  
fulladder mod226(sum199,carry213,carry227,carry228,p[18]);
fulladder mod227(sum200,carry214,carry228,carry229,p[19]);
fulladder mod228(sum201,carry215,carry229,carry230,p[20]);
fulladder mod229(sum202,carry216,carry230,carry231,p[21]);
fulladder mod230(sum203,carry217,carry231,carry232,p[22]);
fulladder mod231(sum204,carry218,carry232,carry233,p[23]);
fulladder mod232(sum205,carry219,carry233,carry234,p[24]);
fulladder mod233(sum206,carry220,carry234,carry235,p[25]);
fulladder mod234(sum207,carry221,carry235,carry236,p[26]);
fulladder mod235(sum208,carry222,carry236,carry237,p[27]);
fulladder mod236(sum209,carry223,carry237,carry238,p[28]);
fulladder mod237(sum210,carry224,carry238,carry239,p[29]);
fulladder mod238(pp15[15],carry225,carry239,p[31],p[30]);


assign out = p;




endmodule