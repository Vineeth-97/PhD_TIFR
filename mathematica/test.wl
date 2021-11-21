(* ::Package:: *)

\[Chi][t_,a1_,a2_,a3_,b1_,b2_,b3_]:= t(a1+a1^-1)(a2+a2^-1)(a3+a3^-1)b1*b2*b3;
PE = Exp[Sum[\[Chi][t^r,a1^r,a2^r,a3^r,b1^r,b2^r,b3^r]/r+\[Chi][t^r,a1^r,a2^r,a3^r,b1^-r,b2^-r,b3^-r]/r,{r,1,\[Infinity]}]]//Simplify;
Int = Series[PE,{t,0,4}]*(a1^-1-a1)*(a2^-1-a2)*(a3^-1-a3)*(b1^-1*b2^-1*b3^-1);
ans = Residue[Residue[Residue[Residue[Residue[Residue[Normal[Int],{a1,0}],{a2,0}],{a3,0}],{b1,0}],{b2,0}],{b3,0}];
Print[ans]
ans>>output
