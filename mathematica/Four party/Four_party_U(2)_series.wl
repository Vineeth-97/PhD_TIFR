(* ::Package:: *)

(* ::Input::Initialization:: *)
\[Chi][t_,a1_,a2_,b1_,b2_,c1_,c2_,d1_,d2_]:= t(a1+a2)(b1+b2)(c1+c2)(d1+d2);
PE = Exp[Sum[\[Chi][t^r,a1^r,a2^r,b1^r,b2^r,c1^r,c2^r,d1^r,d2^r]/r+\[Chi][t^r,a1^-r,a2^-r,b1^-r,b2^-r,c1^-r,c2^-r,d1^-r,d2^-r]/r,{r,1,\[Infinity]}]];
Int = PE*(a1^-1*a2^-1*b1^-1*b2^-1*c1^-1*c2^-1*d1^-1*d2^-1)*(1-a1/a2)*(1-b1/b2)*(1-c1/c2)*(1-d1/d2);

s = Coefficient[Normal[Series[Int,{t,0,8}]],t,8];

ans = Residue[s,{a1,0}];
ans = Residue[ans,{a2,0}];
ans = Residue[ans,{b1,0}];
ans = Residue[ans,{b2,0}];
ans = Residue[ans,{c1,0}];
ans = Residue[ans,{c2,0}];
ans = Residue[ans,{d1,0}];
ans = Residue[ans,{d2,0}];

Print[ans]
ans>>output 
