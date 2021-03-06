(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Code:: *)
Int[x_^m_.*(a_+b_.*Sin[c_.+d_.*x_])^n_,x_Symbol] :=
  Dist[(2*a)^n,Int[x^m*Cos[-Pi*a/(4*b)+c/2+d*x/2]^(2*n),x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2] && RationalQ[m] && IntegerQ[n] && n<0


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*Sin[c_.+d_.*x_])^n_,x_Symbol] :=
  Dist[(2*a)^(n-1/2)*Sqrt[a+b*Sin[c+d*x]]/Cos[-Pi*a/(4*b)+c/2+d*x/2],
    Int[x^m*Cos[-Pi*a/(4*b)+c/2+d*x/2]^(2*n),x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2] && RationalQ[m] && IntegerQ[n-1/2]


(* ::Code:: *)
Int[x_/(a_+b_.*Sin[c_.+d_.*x_])^2,x_Symbol] :=
  Dist[a/(a^2-b^2),Int[x/(a+b*Sin[c+d*x]),x]] -
  Dist[b/(a^2-b^2),Int[x*(b+a*Sin[c+d*x])/(a+b*Sin[c+d*x])^2,x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*Sin[c_.+d_.*x_])^n_,x_Symbol] :=
  Dist[1/2^n,Int[x^m*(I*b+2*a*E^(I*c+I*d*x)-I*b*E^(2*(I*c+I*d*x)))^n/E^(n*(I*c+I*d*x)),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && RationalQ[m] && m>0 && IntegerQ[n] && n<0


(* ::Code:: *)
(* Int[x_^m_.*(a_+b_.*Cos[c_.+d_.*x_])^n_,x_Symbol] :=
  Dist[(2*a)^n,Int[x^m*Cos[-Pi/4*(1-a/b)+c/2+d*x/2]^(2*n),x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2] && RationalQ[m] && IntegerQ[n] && n<0 *)


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*Cos[c_.+d_.*x_])^n_,x_Symbol] :=
  Dist[(2*a)^n,Int[x^m*Cos[c/2+d*x/2]^(2*n),x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a-b] && RationalQ[m] && IntegerQ[n] && n<0


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*Cos[c_.+d_.*x_])^n_,x_Symbol] :=
  Dist[(2*a)^n,Int[x^m*Sin[c/2+d*x/2]^(2*n),x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a+b] && RationalQ[m] && IntegerQ[n] && n<0


(* ::Code:: *)
(* Int[x_^m_.*(a_+b_.*Cos[c_.+d_.*x_])^n_,x_Symbol] :=
  Dist[(2*a)^(n-1/2)*Sqrt[a+b*Cos[c+d*x]]/Cos[-Pi/4*(1-a/b)+c/2+d*x/2],
    Int[x^m*Cos[-Pi/4*(1-a/b)+c/2+d*x/2]^(2*n),x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a^2-b^2] && RationalQ[m] && IntegerQ[n-1/2] *)


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*Cos[c_.+d_.*x_])^n_,x_Symbol] :=
  Dist[(2*a)^(n-1/2)*Sqrt[a+b*Cos[c+d*x]]/Cos[c/2+d*x/2],Int[x^m*Cos[c/2+d*x/2]^(2*n),x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a-b] && RationalQ[m] && IntegerQ[n-1/2]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*Cos[c_.+d_.*x_])^n_,x_Symbol] :=
  Dist[(2*a)^(n-1/2)*Sqrt[a+b*Cos[c+d*x]]/Sin[c/2+d*x/2],Int[x^m*Sin[c/2+d*x/2]^(2*n),x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[a+b] && RationalQ[m] && IntegerQ[n-1/2]


(* ::Code:: *)
Int[x_/(a_+b_.*Cos[c_.+d_.*x_])^2,x_Symbol] :=
  Dist[a/(a^2-b^2),Int[x/(a+b*Cos[c+d*x]),x]] -
  Dist[b/(a^2-b^2),Int[x*(b+a*Cos[c+d*x])/(a+b*Cos[c+d*x])^2,x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*Cos[c_.+d_.*x_])^n_,x_Symbol] :=
  Dist[1/2^n,Int[x^m*(b+2*a*E^(I*c+I*d*x)+b*E^(2*(I*c+I*d*x)))^n/E^(n*(I*c+I*d*x)),x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a^2-b^2] && RationalQ[m] && m>0 && IntegerQ[n] && n<0


(* ::Code:: *)
Int[(a_+b_.*Sin[c_.+d_.*x_]^2)^n_,x_Symbol] :=
  Dist[1/2^n,Int[(2*a+b-b*Cos[2*c+2*d*x])^n,x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a+b] && RationalQ[n] && n!=-1


(* ::Code:: *)
Int[(a_+b_.*Cos[c_.+d_.*x_]^2)^n_,x_Symbol] :=
  Dist[1/2^n,Int[(2*a+b+b*Cos[2*c+2*d*x])^n,x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a+b] && RationalQ[n] && n!=-1


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*Sin[c_.+d_.*x_]^2)^n_,x_Symbol] :=
  Dist[1/2^n,Int[x^m*(2*a+b-b*Cos[2*c+2*d*x])^n,x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a+b] && IntegersQ[m,n] && (m>0 && n==-1 || m==1 && n==-2)


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*Cos[c_.+d_.*x_]^2)^n_,x_Symbol] :=
  Dist[1/2^n,Int[x^m*(2*a+b+b*Cos[2*c+2*d*x])^n,x]] /;
FreeQ[{a,b,c,d},x] && NonzeroQ[a+b] && IntegersQ[m,n] && (m>0 && n==-1 || m==1 && n==-2)


(* ::Code:: *)
Int[Sin[b_.*x_^2],x_Symbol] :=
  Sqrt[Pi/2]*FresnelS[Rt[b,2]*x/Sqrt[Pi/2]]/Rt[b,2] /;
FreeQ[b,x]


(* ::Code:: *)
Int[Cos[b_.*x_^2],x_Symbol] :=
  Sqrt[Pi/2]*FresnelC[Rt[b,2]*x/Sqrt[Pi/2]]/Rt[b,2] /;
FreeQ[b,x]


(* ::Code:: *)
Int[Sin[a_+b_.*x_^2],x_Symbol] :=
  Dist[Sin[a],Int[Cos[b*x^2],x]] + 
  Dist[Cos[a],Int[Sin[b*x^2],x]] /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[Cos[a_+b_.*x_^2],x_Symbol] :=
  Dist[Cos[a],Int[Cos[b*x^2],x]] - 
  Dist[Sin[a],Int[Sin[b*x^2],x]] /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[Sin[a_.+b_.*x_^n_],x_Symbol] :=
  Dist[I/2,Int[E^(-a*I-b*I*x^n),x]] - 
  Dist[I/2,Int[E^(a*I+b*I*x^n),x]] /;
FreeQ[{a,b,n},x] && Not[FractionOrNegativeQ[n]]


(* ::Code:: *)
Int[Cos[a_.+b_.*x_^n_],x_Symbol] :=
  Dist[1/2,Int[E^(-a*I-b*I*x^n),x]] + 
  Dist[1/2,Int[E^(a*I+b*I*x^n),x]] /;
FreeQ[{a,b,n},x] && Not[FractionOrNegativeQ[n]]


(* ::Code:: *)
Int[Sin[a_.+b_.*x_^n_],x_Symbol] :=
  x*Sin[a+b*x^n] -
  Dist[b*n,Int[x^n*Cos[a+b*x^n],x]] /;
FreeQ[{a,b},x] && IntegerQ[n] && n<0


(* ::Code:: *)
Int[Cos[a_.+b_.*x_^n_],x_Symbol] :=
  x*Cos[a+b*x^n] + 
  Dist[b*n,Int[x^n*Sin[a+b*x^n],x]] /;
FreeQ[{a,b},x] && IntegerQ[n] && n<0


(* ::Code:: *)
Int[Sin[b_.*x_^n_.]/x_,x_Symbol] :=
  SinIntegral[b*x^n]/n /;
FreeQ[{b,n},x]


(* ::Code:: *)
Int[Cos[b_.*x_^n_.]/x_,x_Symbol] :=
  CosIntegral[b*x^n]/n /;
FreeQ[{b,n},x]


(* ::Code:: *)
Int[Sin[a_+b_.*x_^n_.]/x_,x_Symbol] :=
  Dist[Sin[a],Int[Cos[b*x^n]/x,x]] + 
  Dist[Cos[a],Int[Sin[b*x^n]/x,x]] /;
FreeQ[{a,b,n},x]


(* ::Code:: *)
Int[Cos[a_+b_.*x_^n_.]/x_,x_Symbol] :=
  Dist[Cos[a],Int[Cos[b*x^n]/x,x]] - 
  Dist[Sin[a],Int[Sin[b*x^n]/x,x]] /;
FreeQ[{a,b,n},x]


(* ::Code:: *)
Int[x_^m_.*Sin[a_.+b_.*x_^n_.],x_Symbol] :=
  -x^(m-n+1)*Cos[a+b*x^n]/(b*n) +
  Dist[(m-n+1)/(b*n),Int[x^(m-n)*Cos[a+b*x^n],x]] /;
FreeQ[{a,b},x] && IntegerQ[n] && RationalQ[m] && 0<n<=m


(* ::Code:: *)
Int[x_^m_.*Cos[a_.+b_.*x_^n_.],x_Symbol] :=
  x^(m-n+1)*Sin[a+b*x^n]/(b*n) -
  Dist[(m-n+1)/(b*n),Int[x^(m-n)*Sin[a+b*x^n],x]] /;
FreeQ[{a,b},x] && IntegerQ[n] && RationalQ[m] && 0<n<=m


(* ::Code:: *)
Int[x_^m_.*Sin[a_.+b_.*x_^n_.],x_Symbol] :=
  x^(m+1)*Sin[a+b*x^n]/(m+1) -
  Dist[b*n/(m+1),Int[x^(m+n)*Cos[a+b*x^n],x]] /;
FreeQ[{a,b,m,n},x] && (ZeroQ[m+n+1] || IntegerQ[n] && RationalQ[m] && (n>0 && m<-1 || 0<-n<m+1))


(* ::Code:: *)
Int[x_^m_.*Cos[a_.+b_.*x_^n_.],x_Symbol] :=
  x^(m+1)*Cos[a+b*x^n]/(m+1) +
  Dist[b*n/(m+1),Int[x^(m+n)*Sin[a+b*x^n],x]] /;
FreeQ[{a,b,m,n},x] && (ZeroQ[m+n+1] || IntegerQ[n] && RationalQ[m] && (n>0 && m<-1 || 0<-n<m+1))


(* ::Code:: *)
Int[x_^m_.*Sin[a_.+b_.*x_^n_.],x_Symbol] :=
  Dist[I/2,Int[x^m*E^(-a*I-b*I*x^n),x]] - 
  Dist[I/2,Int[x^m*E^(a*I+b*I*x^n),x]] /;
FreeQ[{a,b,m,n},x] && NonzeroQ[m+1] && NonzeroQ[m-n+1] && 
Not[FractionQ[m] || FractionOrNegativeQ[n]]


(* ::Code:: *)
Int[x_^m_.*Cos[a_.+b_.*x_^n_.],x_Symbol] :=
  Dist[1/2,Int[x^m*E^(-a*I-b*I*x^n),x]] + 
  Dist[1/2,Int[x^m*E^(a*I+b*I*x^n),x]] /;
FreeQ[{a,b,m,n},x] && NonzeroQ[m+1] && NonzeroQ[m-n+1] && 
Not[FractionQ[m] || FractionOrNegativeQ[n]]


(* ::Code:: *)
Int[x_^m_.*Sin[a_.+b_.*x_^n_.]^p_,x_Symbol] :=
  -Sin[a+b*x^n]^p/((n-1)*x^(n-1)) +
  Dist[b*n*p/(n-1),Int[Sin[a+b*x^n]^(p-1)*Cos[a+b*x^n],x]] /;
FreeQ[{a,b},x] && IntegersQ[n,p] && ZeroQ[m+n] && p>1 && NonzeroQ[n-1]


(* ::Code:: *)
Int[x_^m_.*Cos[a_.+b_.*x_^n_.]^p_,x_Symbol] :=
  -Cos[a+b*x^n]^p/((n-1)*x^(n-1)) -
  Dist[b*n*p/(n-1),Int[Cos[a+b*x^n]^(p-1)*Sin[a+b*x^n],x]] /;
FreeQ[{a,b},x] && IntegersQ[n,p] && ZeroQ[m+n] && p>1 && NonzeroQ[n-1]


(* ::Code:: *)
Int[x_^m_.*Sin[a_.+b_.*x_^n_.]^p_,x_Symbol] :=
  n*Sin[a+b*x^n]^p/(b^2*n^2*p^2) -
  x^n*Cos[a+b*x^n]*Sin[a+b*x^n]^(p-1)/(b*n*p) +
  Dist[(p-1)/p,Int[x^m*Sin[a+b*x^n]^(p-2),x]] /;
FreeQ[{a,b,m,n},x] && RationalQ[p] && p>1 && ZeroQ[m-2*n+1]


(* ::Code:: *)
Int[x_^m_.*Cos[a_.+b_.*x_^n_.]^p_,x_Symbol] :=
  n*Cos[a+b*x^n]^p/(b^2*n^2*p^2) +
  x^n*Sin[a+b*x^n]*Cos[a+b*x^n]^(p-1)/(b*n*p) +
  Dist[(p-1)/p,Int[x^m*Cos[a+b*x^n]^(p-2),x]] /;
FreeQ[{a,b,m,n},x] && RationalQ[p] && p>1 && ZeroQ[m-2*n+1]


(* ::Code:: *)
Int[x_^m_.*Sin[a_.+b_.*x_^n_.]^p_,x_Symbol] :=
  (m-n+1)*x^(m-2*n+1)*Sin[a+b*x^n]^p/(b^2*n^2*p^2) -
  x^(m-n+1)*Cos[a+b*x^n]*Sin[a+b*x^n]^(p-1)/(b*n*p) +
  Dist[(p-1)/p,Int[x^m*Sin[a+b*x^n]^(p-2),x]] -
  Dist[(m-n+1)*(m-2*n+1)/(b^2*n^2*p^2),Int[x^(m-2*n)*Sin[a+b*x^n]^p,x]] /;
FreeQ[{a,b},x] && IntegersQ[m,n] && RationalQ[p] && p>1 && 0<2*n<m+1


(* ::Code:: *)
Int[x_^m_.*Cos[a_.+b_.*x_^n_.]^p_,x_Symbol] :=
  (m-n+1)*x^(m-2*n+1)*Cos[a+b*x^n]^p/(b^2*n^2*p^2) +
  x^(m-n+1)*Sin[a+b*x^n]*Cos[a+b*x^n]^(p-1)/(b*n*p) +
  Dist[(p-1)/p,Int[x^m*Cos[a+b*x^n]^(p-2),x]] -
  Dist[(m-n+1)*(m-2*n+1)/(b^2*n^2*p^2),Int[x^(m-2*n)*Cos[a+b*x^n]^p,x]] /;
FreeQ[{a,b},x] && IntegersQ[m,n] && RationalQ[p] && p>1 && 0<2*n<m+1


(* ::Code:: *)
Int[x_^m_.*Sin[a_.+b_.*x_^n_.]^p_,x_Symbol] :=
  x^n*Cos[a+b*x^n]*Sin[a+b*x^n]^(p+1)/(b*n*(p+1)) - 
  n*Sin[a+b*x^n]^(p+2)/(b^2*n^2*(p+1)*(p+2)) + 
  Dist[(p+2)/(p+1),Int[x^m*Sin[a+b*x^n]^(p+2),x]] /;
FreeQ[{a,b,m,n},x] && RationalQ[p] && p<-1 && p!=-2 && ZeroQ[m-2*n+1]


(* ::Code:: *)
Int[x_^m_.*Cos[a_.+b_.*x_^n_.]^p_,x_Symbol] :=
  -x^n*Sin[a+b*x^n]*Cos[a+b*x^n]^(p+1)/(b*n*(p+1)) - 
  n*Cos[a+b*x^n]^(p+2)/(b^2*n^2*(p+1)*(p+2)) + 
  Dist[(p+2)/(p+1),Int[x^m*Cos[a+b*x^n]^(p+2),x]] /;
FreeQ[{a,b,m,n},x] && RationalQ[p] && p<-1 && p!=-2 && ZeroQ[m-2*n+1]


(* ::Code:: *)
Int[x_^m_.*Sin[a_.+b_.*x_^n_.]^p_,x_Symbol] :=
  x^(m-n+1)*Cos[a+b*x^n]*Sin[a+b*x^n]^(p+1)/(b*n*(p+1)) -
  (m-n+1)*x^(m-2*n+1)*Sin[a+b*x^n]^(p+2)/(b^2*n^2*(p+1)*(p+2)) +
  Dist[(p+2)/(p+1),Int[x^m*Sin[a+b*x^n]^(p+2),x]] +
  Dist[(m-n+1)*(m-2*n+1)/(b^2*n^2*(p+1)*(p+2)),Int[x^(m-2*n)*Sin[a+b*x^n]^(p+2),x]] /;
FreeQ[{a,b},x] && IntegersQ[m,n] && RationalQ[p] && p<-1 && p!=-2 && 0<2*n<m+1 


(* ::Code:: *)
Int[x_^m_.*Cos[a_.+b_.*x_^n_.]^p_,x_Symbol] :=
  -x^(m-n+1)*Sin[a+b*x^n]*Cos[a+b*x^n]^(p+1)/(b*n*(p+1)) -
  (m-n+1)*x^(m-2*n+1)*Cos[a+b*x^n]^(p+2)/(b^2*n^2*(p+1)*(p+2)) +
  Dist[(p+2)/(p+1),Int[x^m*Cos[a+b*x^n]^(p+2),x]] +
  Dist[(m-n+1)*(m-2*n+1)/(b^2*n^2*(p+1)*(p+2)),Int[x^(m-2*n)*Cos[a+b*x^n]^(p+2),x]] /;
FreeQ[{a,b},x] && IntegersQ[m,n] && RationalQ[p] && p<-1 && p!=-2 && 0<2*n<m+1 


(* ::Code:: *)
Int[x_^m_.*Sin[a_.+b_.*x_^n_.]^p_,x_Symbol] :=
  x^(m+1)*Sin[a+b*x^n]^p/(m+1) - 
  b*n*p*x^(m+n+1)*Cos[a+b*x^n]*Sin[a+b*x^n]^(p-1)/((m+1)*(m+n+1)) - 
  Dist[b^2*n^2*p^2/((m+1)*(m+n+1)),Int[x^(m+2*n)*Sin[a+b*x^n]^p,x]] + 
  Dist[b^2*n^2*p*(p-1)/((m+1)*(m+n+1)),Int[x^(m+2*n)*Sin[a+b*x^n]^(p-2),x]] /;
FreeQ[{a,b},x] && IntegersQ[m,n] && RationalQ[p] && p>1 && 0<2*n<1-m && NonzeroQ[m+n+1]


(* ::Code:: *)
Int[x_^m_.*Cos[a_.+b_.*x_^n_.]^p_,x_Symbol] :=
  x^(m+1)*Cos[a+b*x^n]^p/(m+1) + 
  b*n*p*x^(m+n+1)*Sin[a+b*x^n]*Cos[a+b*x^n]^(p-1)/((m+1)*(m+n+1)) - 
  Dist[b^2*n^2*p^2/((m+1)*(m+n+1)),Int[x^(m+2*n)*Cos[a+b*x^n]^p,x]] + 
  Dist[b^2*n^2*p*(p-1)/((m+1)*(m+n+1)),Int[x^(m+2*n)*Cos[a+b*x^n]^(p-2),x]] /;
FreeQ[{a,b},x] && IntegersQ[m,n] && RationalQ[p] && p>1 && 0<2*n<1-m && NonzeroQ[m+n+1]


(* ::Code:: *)
(* Int[x_^m_.*Sin[a_.+b_.*x_^n_.]^p_,x_Symbol] :=
  Dist[(I/2)^p,Int[x^m*(E^(-a*I-b*I*x^n)-E^(a*I+b*I*x^n))^p,x]] /;
FreeQ[{a,b,m,n},x] && IntegerQ[p] && p>0 && NonzeroQ[m+1] && NonzeroQ[m-n+1] && Not[FractionQ[m] || FractionOrNegativeQ[n]] *)


(* ::Code:: *)
Int[x_^m_.*Sin[a_.+b_.*(c_+d_.*x_)^n_]^p_.,x_Symbol] :=
  Dist[1/d,Subst[Int[(-c/d+x/d)^m*Sin[a+b*x^n]^p,x],x,c+d*x]] /;
FreeQ[{a,b,c,d,n},x] && IntegerQ[m] && m>0 && RationalQ[p]


(* ::Code:: *)
Int[x_^m_.*Cos[a_.+b_.*(c_+d_.*x_)^n_]^p_.,x_Symbol] :=
  Dist[1/d,Subst[Int[(-c/d+x/d)^m*Cos[a+b*x^n]^p,x],x,c+d*x]] /;
FreeQ[{a,b,c,d,n},x] && IntegerQ[m] && m>0 && RationalQ[p]


(* ::Code:: *)
Int[Sin[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  Int[Sin[(b+2*c*x)^2/(4*c)],x] /;
FreeQ[{a,b,c},x] && ZeroQ[b^2-4*a*c]


(* ::Code:: *)
Int[Cos[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  Int[Cos[(b+2*c*x)^2/(4*c)],x] /;
FreeQ[{a,b,c},x] && ZeroQ[b^2-4*a*c]


(* ::Code:: *)
Int[Sin[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  Cos[(b^2-4*a*c)/(4*c)]*Int[Sin[(b+2*c*x)^2/(4*c)],x] - 
  Sin[(b^2-4*a*c)/(4*c)]*Int[Cos[(b+2*c*x)^2/(4*c)],x] /;
FreeQ[{a,b,c},x] && NonzeroQ[b^2-4*a*c]


(* ::Code:: *)
Int[Cos[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  Cos[(b^2-4*a*c)/(4*c)]*Int[Cos[(b+2*c*x)^2/(4*c)],x] + 
  Sin[(b^2-4*a*c)/(4*c)]*Int[Sin[(b+2*c*x)^2/(4*c)],x] /;
FreeQ[{a,b,c},x] && NonzeroQ[b^2-4*a*c]


(* ::Code:: *)
Int[(d_.+e_.*x_)*Sin[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  -e*Cos[a+b*x+c*x^2]/(2*c) /;
FreeQ[{a,b,c,d,e},x] && ZeroQ[b*e-2*c*d]


(* ::Code:: *)
Int[(d_.+e_.*x_)*Cos[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  e*Sin[a+b*x+c*x^2]/(2*c) /;
FreeQ[{a,b,c,d,e},x] && ZeroQ[b*e-2*c*d]


(* ::Code:: *)
Int[(d_.+e_.*x_)*Sin[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  -e*Cos[a+b*x+c*x^2]/(2*c) -
  Dist[(b*e-2*c*d)/(2*c),Int[Sin[a+b*x+c*x^2],x]] /;
FreeQ[{a,b,c,d,e},x] && NonzeroQ[b*e-2*c*d]


(* ::Code:: *)
Int[(d_.+e_.*x_)*Cos[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  e*Sin[a+b*x+c*x^2]/(2*c) -
  Dist[(b*e-2*c*d)/(2*c),Int[Cos[a+b*x+c*x^2],x]] /;
FreeQ[{a,b,c,d,e},x] && NonzeroQ[b*e-2*c*d]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*Sin[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  -e*(d+e*x)^(m-1)*Cos[a+b*x+c*x^2]/(2*c) + 
  Dist[e^2*(m-1)/(2*c),Int[(d+e*x)^(m-2)*Cos[a+b*x+c*x^2],x]] /;
FreeQ[{a,b,c,d,e},x] && RationalQ[m] && m>1 && ZeroQ[b*e-2*c*d]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*Cos[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  e*(d+e*x)^(m-1)*Sin[a+b*x+c*x^2]/(2*c) - 
  Dist[e^2*(m-1)/(2*c),Int[(d+e*x)^(m-2)*Sin[a+b*x+c*x^2],x]] /;
FreeQ[{a,b,c,d,e},x] && RationalQ[m] && m>1 && ZeroQ[b*e-2*c*d]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*Sin[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  -e*(d+e*x)^(m-1)*Cos[a+b*x+c*x^2]/(2*c) - 
  Dist[(b*e-2*c*d)/(2*c),Int[(d+e*x)^(m-1)*Sin[a+b*x+c*x^2],x]] + 
  Dist[e^2*(m-1)/(2*c),Int[(d+e*x)^(m-2)*Cos[a+b*x+c*x^2],x]] /;
FreeQ[{a,b,c,d,e},x] && RationalQ[m] && m>1 && NonzeroQ[b*e-2*c*d]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*Cos[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  e*(d+e*x)^(m-1)*Sin[a+b*x+c*x^2]/(2*c) - 
  Dist[(b*e-2*c*d)/(2*c),Int[(d+e*x)^(m-1)*Cos[a+b*x+c*x^2],x]] - 
  Dist[e^2*(m-1)/(2*c),Int[(d+e*x)^(m-2)*Sin[a+b*x+c*x^2],x]] /;
FreeQ[{a,b,c,d,e},x] && RationalQ[m] && m>1 && NonzeroQ[b*e-2*c*d]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*Sin[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  (d+e*x)^(m+1)*Sin[a+b*x+c*x^2]/(e*(m+1)) -
  Dist[2*c/(e^2*(m+1)),Int[(d+e*x)^(m+2)*Cos[a+b*x+c*x^2],x]] /;
FreeQ[{a,b,c,d,e},x] && RationalQ[m] && m<-1 && ZeroQ[b*e-2*c*d]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*Cos[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  (d+e*x)^(m+1)*Cos[a+b*x+c*x^2]/(e*(m+1)) + 
  Dist[2*c/(e^2*(m+1)),Int[(d+e*x)^(m+2)*Sin[a+b*x+c*x^2],x]] /;
FreeQ[{a,b,c,d,e},x] && RationalQ[m] && m<-1 && ZeroQ[b*e-2*c*d]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*Sin[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  (d+e*x)^(m+1)*Sin[a+b*x+c*x^2]/(e*(m+1)) -
  Dist[(b*e-2*c*d)/(e^2*(m+1)),Int[(d+e*x)^(m+1)*Cos[a+b*x+c*x^2],x]] -
  Dist[2*c/(e^2*(m+1)),Int[(d+e*x)^(m+2)*Cos[a+b*x+c*x^2],x]] /;
FreeQ[{a,b,c,d,e},x] && RationalQ[m] && m<-1 && NonzeroQ[b*e-2*c*d]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*Cos[a_.+b_.*x_+c_.*x_^2],x_Symbol] :=
  (d+e*x)^(m+1)*Cos[a+b*x+c*x^2]/(e*(m+1)) + 
  Dist[(b*e-2*c*d)/(e^2*(m+1)),Int[(d+e*x)^(m+1)*Sin[a+b*x+c*x^2],x]] +
  Dist[2*c/(e^2*(m+1)),Int[(d+e*x)^(m+2)*Sin[a+b*x+c*x^2],x]] /;
FreeQ[{a,b,c,d,e},x] && RationalQ[m] && m<-1 && NonzeroQ[b*e-2*c*d]


(* ::Code:: *)
Int[Sin[a_.+b_.*Log[c_.*x_^n_.]],x_Symbol] :=
  x*Sin[a+b*Log[c*x^n]]/(1+b^2*n^2) -
  b*n*x*Cos[a+b*Log[c*x^n]]/(1+b^2*n^2) /;
FreeQ[{a,b,c,n},x] && NonzeroQ[1+b^2*n^2]


(* ::Code:: *)
Int[Cos[a_.+b_.*Log[c_.*x_^n_.]],x_Symbol] :=
  x*Cos[a+b*Log[c*x^n]]/(1+b^2*n^2) +
  b*n*x*Sin[a+b*Log[c*x^n]]/(1+b^2*n^2) /;
FreeQ[{a,b,c,n},x] && NonzeroQ[1+b^2*n^2]


(* ::Code:: *)
Int[Sin[a_.+b_.*Log[c_.*x_^n_.]]^p_,x_Symbol] :=
  x*Sin[a+b*Log[c*x^n]]^p/(1+b^2*n^2*p^2) -
  b*n*p*x*Cos[a+b*Log[c*x^n]]*Sin[a+b*Log[c*x^n]]^(p-1)/(1+b^2*n^2*p^2) +
  Dist[b^2*n^2*p*(p-1)/(1+b^2*n^2*p^2),Int[Sin[a+b*Log[c*x^n]]^(p-2),x]] /;
FreeQ[{a,b,c,n},x] && RationalQ[p] && p>1 && NonzeroQ[1+b^2*n^2*p^2]


(* ::Code:: *)
Int[Cos[a_.+b_.*Log[c_.*x_^n_.]]^p_,x_Symbol] :=
  x*Cos[a+b*Log[c*x^n]]^p/(1+b^2*n^2*p^2) +
  b*n*p*x*Cos[a+b*Log[c*x^n]]^(p-1)*Sin[a+b*Log[c*x^n]]/(1+b^2*n^2*p^2) +
  Dist[b^2*n^2*p*(p-1)/(1+b^2*n^2*p^2),Int[Cos[a+b*Log[c*x^n]]^(p-2),x]] /;
FreeQ[{a,b,c,n},x] && RationalQ[p] && p>1 && NonzeroQ[1+b^2*n^2*p^2]


(* ::Code:: *)
Int[Sin[a_.+b_.*Log[c_.*x_^n_.]]^p_,x_Symbol] :=
  x*Cot[a+b*Log[c*x^n]]*Sin[a+b*Log[c*x^n]]^(p+2)/(b*n*(p+1)) -
  x*Sin[a+b*Log[c*x^n]]^(p+2)/(b^2*n^2*(p+1)*(p+2)) /;
FreeQ[{a,b,c,n,p},x] && NonzeroQ[p+1] && NonzeroQ[p+2] && ZeroQ[1+b^2*n^2*(p+2)^2]


(* ::Code:: *)
Int[Cos[a_.+b_.*Log[c_.*x_^n_.]]^p_,x_Symbol] :=
  -x*Tan[a+b*Log[c*x^n]]*Cos[a+b*Log[c*x^n]]^(p+2)/(b*n*(p+1)) -
  x*Cos[a+b*Log[c*x^n]]^(p+2)/(b^2*n^2*(p+1)*(p+2)) /;
FreeQ[{a,b,c,n,p},x] && NonzeroQ[p+1] && NonzeroQ[p+2] && ZeroQ[1+b^2*n^2*(p+2)^2]


(* ::Code:: *)
Int[Sin[a_.+b_.*Log[c_.*x_^n_.]]^p_,x_Symbol] :=
  x*Cot[a+b*Log[c*x^n]]*Sin[a+b*Log[c*x^n]]^(p+2)/(b*n*(p+1)) -
  x*Sin[a+b*Log[c*x^n]]^(p+2)/(b^2*n^2*(p+1)*(p+2)) +
  Dist[(1+b^2*n^2*(p+2)^2)/(b^2*n^2*(p+1)*(p+2)),Int[Sin[a+b*Log[c*x^n]]^(p+2),x]] /;
FreeQ[{a,b,c,n},x] && RationalQ[p] && p<-1 && p!=-2 && NonzeroQ[1+b^2*n^2*(p+2)^2]


(* ::Code:: *)
Int[Cos[a_.+b_.*Log[c_.*x_^n_.]]^p_,x_Symbol] :=
  -x*Tan[a+b*Log[c*x^n]]*Cos[a+b*Log[c*x^n]]^(p+2)/(b*n*(p+1)) -
  x*Cos[a+b*Log[c*x^n]]^(p+2)/(b^2*n^2*(p+1)*(p+2)) +
  Dist[(1+b^2*n^2*(p+2)^2)/(b^2*n^2*(p+1)*(p+2)),Int[Cos[a+b*Log[c*x^n]]^(p+2),x]] /;
FreeQ[{a,b,c,n},x] && RationalQ[p] && p<-1 && p!=-2 && NonzeroQ[1+b^2*n^2*(p+2)^2]


(* ::Code:: *)
Int[x_^m_.*Sin[a_.+b_.*Log[c_.*x_^n_.]],x_Symbol] :=
  (m+1)*x^(m+1)*Sin[a+b*Log[c*x^n]]/(b^2*n^2+(m+1)^2) -
  b*n*x^(m+1)*Cos[a+b*Log[c*x^n]]/(b^2*n^2+(m+1)^2) /;
FreeQ[{a,b,c,m,n},x] && NonzeroQ[b^2*n^2+(m+1)^2] && NonzeroQ[m+1]


(* ::Code:: *)
Int[x_^m_.*Cos[a_.+b_.*Log[c_.*x_^n_.]],x_Symbol] :=
  (m+1)*x^(m+1)*Cos[a+b*Log[c*x^n]]/(b^2*n^2+(m+1)^2) +
  b*n*x^(m+1)*Sin[a+b*Log[c*x^n]]/(b^2*n^2+(m+1)^2) /;
FreeQ[{a,b,c,m,n},x] && NonzeroQ[b^2*n^2+(m+1)^2] && NonzeroQ[m+1]


(* ::Code:: *)
Int[x_^m_.*Sin[a_.+b_.*Log[c_.*x_^n_.]]^p_,x_Symbol] :=
  (m+1)*x^(m+1)*Sin[a+b*Log[c*x^n]]^p/(b^2*n^2*p^2+(m+1)^2) -
  b*n*p*x^(m+1)*Cos[a+b*Log[c*x^n]]*Sin[a+b*Log[c*x^n]]^(p-1)/(b^2*n^2*p^2+(m+1)^2) +
  Dist[b^2*n^2*p*(p-1)/(b^2*n^2*p^2+(m+1)^2),Int[x^m*Sin[a+b*Log[c*x^n]]^(p-2),x]] /;
FreeQ[{a,b,c,m,n},x] && RationalQ[p] && p>1 && NonzeroQ[b^2*n^2*p^2+(m+1)^2] && NonzeroQ[m+1]


(* ::Code:: *)
Int[x_^m_.*Cos[a_.+b_.*Log[c_.*x_^n_.]]^p_,x_Symbol] :=
  (m+1)*x^(m+1)*Cos[a+b*Log[c*x^n]]^p/(b^2*n^2*p^2+(m+1)^2) +
  b*n*p*x^(m+1)*Sin[a+b*Log[c*x^n]]*Cos[a+b*Log[c*x^n]]^(p-1)/(b^2*n^2*p^2+(m+1)^2) +
  Dist[b^2*n^2*p*(p-1)/(b^2*n^2*p^2+(m+1)^2),Int[x^m*Cos[a+b*Log[c*x^n]]^(p-2),x]] /;
FreeQ[{a,b,c,m,n},x] && RationalQ[p] && p>1 && NonzeroQ[b^2*n^2*p^2+(m+1)^2] && NonzeroQ[m+1]


(* ::Code:: *)
Int[x_^m_.*Sin[a_.+b_.*Log[c_.*x_^n_.]]^p_,x_Symbol] :=
  x^(m+1)*Cot[a+b*Log[c*x^n]]*Sin[a+b*Log[c*x^n]]^(p+2)/(b*n*(p+1)) -
  (m+1)*x^(m+1)*Sin[a+b*Log[c*x^n]]^(p+2)/(b^2*n^2*(p+1)*(p+2)) +
  Dist[(b^2*n^2*(p+2)^2+(m+1)^2)/(b^2*n^2*(p+1)*(p+2)),Int[x^m*Sin[a+b*Log[c*x^n]]^(p+2),x]] /;
FreeQ[{a,b,c,m,n},x] && RationalQ[p] && p<-1 && p!=-2 && NonzeroQ[m+1]


(* ::Code:: *)
Int[x_^m_.*Cos[a_.+b_.*Log[c_.*x_^n_.]]^p_,x_Symbol] :=
  -x^(m+1)*Tan[a+b*Log[c*x^n]]*Cos[a+b*Log[c*x^n]]^(p+2)/(b*n*(p+1)) -
  (m+1)*x^(m+1)*Cos[a+b*Log[c*x^n]]^(p+2)/(b^2*n^2*(p+1)*(p+2)) +
  Dist[(b^2*n^2*(p+2)^2+(m+1)^2)/(b^2*n^2*(p+1)*(p+2)),Int[x^m*Cos[a+b*Log[c*x^n]]^(p+2),x]] /;
FreeQ[{a,b,c,m,n},x] && RationalQ[p] && p<-1 && p!=-2 && NonzeroQ[m+1]


(* ::Code:: *)
Int[Sin[a_.*x_*Log[b_.*x_]^p_.]*Log[b_.*x_]^p_.,x_Symbol] :=
  -Cos[a*x*Log[b*x]^p]/a -
  Dist[p,Int[Sin[a*x*Log[b*x]^p]*Log[b*x]^(p-1),x]] /;
FreeQ[{a,b},x] && RationalQ[p] && p>0


(* ::Code:: *)
Int[Cos[a_.*x_*Log[b_.*x_]^p_.]*Log[b_.*x_]^p_.,x_Symbol] :=
  Sin[a*x*Log[b*x]^p]/a -
  Dist[p,Int[Cos[a*x*Log[b*x]^p]*Log[b*x]^(p-1),x]] /;
FreeQ[{a,b},x] && RationalQ[p] && p>0


(* ::Code:: *)
Int[Sin[a_.*x_^n_*Log[b_.*x_]^p_.]*Log[b_.*x_]^p_.,x_Symbol] :=
  -Cos[a*x^n*Log[b*x]^p]/(a*n*x^(n-1)) -
  Dist[p/n,Int[Sin[a*x^n*Log[b*x]^p]*Log[b*x]^(p-1),x]] -
  Dist[(n-1)/(a*n),Int[Cos[a*x^n*Log[b*x]^p]/x^n,x]] /;
FreeQ[{a,b},x] && RationalQ[{n,p}] && p>0


(* ::Code:: *)
Int[Cos[a_.*x_^n_*Log[b_.*x_]^p_.]*Log[b_.*x_]^p_.,x_Symbol] :=
  Sin[a*x^n*Log[b*x]^p]/(a*n*x^(n-1)) -
  Dist[p/n,Int[Cos[a*x^n*Log[b*x]^p]*Log[b*x]^(p-1),x]] +
  Dist[(n-1)/(a*n),Int[Sin[a*x^n*Log[b*x]^p]/x^n,x]] /;
FreeQ[{a,b},x] && RationalQ[{n,p}] && p>0


(* ::Code:: *)
Int[x_^m_.*Sin[a_.*x_^n_.*Log[b_.*x_]^p_.]*Log[b_.*x_]^p_.,x_Symbol] :=
  -Cos[a*x^n*Log[b*x]^p]/(a*n) -
  Dist[p/n,Int[x^m*Sin[a*x^n*Log[b*x]^p]*Log[b*x]^(p-1),x]] /;
FreeQ[{a,b},x] && RationalQ[{m,n,p}] && p>0 && ZeroQ[m-n+1]


(* ::Code:: *)
Int[x_^m_.*Cos[a_.*x_^n_.*Log[b_.*x_]^p_.]*Log[b_.*x_]^p_.,x_Symbol] :=
  Sin[a*x^n*Log[b*x]^p]/(a*n) -
  Dist[p/n,Int[x^m*Cos[a*x^n*Log[b*x]^p]*Log[b*x]^(p-1),x]] /;
FreeQ[{a,b},x] && RationalQ[{m,n,p}] && p>0 && ZeroQ[m-n+1]


(* ::Code:: *)
Int[x_^m_.*Sin[a_.*x_^n_.*Log[b_.*x_]^p_.]*Log[b_.*x_]^p_.,x_Symbol] :=
  -x^(m-n+1)*Cos[a*x^n*Log[b*x]^p]/(a*n) -
  Dist[p/n,Int[x^m*Sin[a*x^n*Log[b*x]^p]*Log[b*x]^(p-1),x]] +
  Dist[(m-n+1)/(a*n),Int[x^(m-n)*Cos[a*x^n*Log[b*x]^p],x]] /;
FreeQ[{a,b},x] && RationalQ[{m,n,p}] && p>0 && NonzeroQ[m-n+1]


(* ::Code:: *)
Int[x_^m_*Cos[a_.*x_^n_.*Log[b_.*x_]^p_.]*Log[b_.*x_]^p_.,x_Symbol] :=
  x^(m-n+1)*Sin[a*x^n*Log[b*x]^p]/(a*n) -
  Dist[p/n,Int[x^m*Cos[a*x^n*Log[b*x]^p]*Log[b*x]^(p-1),x]] -
  Dist[(m-n+1)/(a*n),Int[x^(m-n)*Sin[a*x^n*Log[b*x]^p],x]] /;
FreeQ[{a,b},x] && RationalQ[{m,n,p}] && p>0 && NonzeroQ[m-n+1]


(* ::Code:: *)
Int[Sin[c_.+d_.*x_]^2*Sin[a_.+b_.*x_]^n_.,x_Symbol] :=
  Dist[1/2,Int[Sin[a+b*x]^n,x]] - 
  Dist[1/2,Int[Cos[a+b*x]*Sin[a+b*x]^n,x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[c-a/2] && ZeroQ[d-b/2] && Not[OddQ[n]]


(* ::Code:: *)
Int[Cos[c_.+d_.*x_]^2*Sin[a_.+b_.*x_]^n_.,x_Symbol] :=
  Dist[1/2,Int[Sin[a+b*x]^n,x]] + 
  Dist[1/2,Int[Cos[a+b*x]*Sin[a+b*x]^n,x]] /;
FreeQ[{a,b,c,d},x] && ZeroQ[c-a/2] && ZeroQ[d-b/2] && Not[OddQ[n]]


(* ::Code:: *)
Int[u_*Sin[a_.+b_.*x_]^n_.,x_Symbol] :=
  Dist[2^n,Int[u*Cos[a/2+b*x/2]^n*Sin[a/2+b*x/2]^n,x]] /;
FreeQ[{a,b},x] && IntegerQ[n] && ZeroQ[a/2+b*x/2-FunctionOfTrig[u,x]]


(* ::Code:: *)
(* Int[u_*Sin[a_.+b_.*x_]^n_,x_Symbol] :=
  Sin[a+b*x]^n/(Sin[a/2+b*x/2]^n*Cos[a/2+b*x/2]^n)*Int[u*Cos[a/2+b*x/2]^n*Sin[a/2+b*x/2]^n,x] /;
FreeQ[{a,b},x] && FractionQ[n] && ZeroQ[a/2+b*x/2-FunctionOfTrig[u,x]] *)


(* ::Code:: *)
(* Int[u_*Sin[v_]^2,x_Symbol] :=
  Dist[1/2,Int[u,x]] - 
  Dist[1/2,Int[u*Cos[2*v],x]] /;
FunctionOfTrigQ[u,2*v,x] *)


(* ::Code:: *)
(* Int[u_*Cos[v_]^2,x_Symbol] :=
  Dist[1/2,Int[u,x]] + 
  Dist[1/2,Int[u*Cos[2*v],x]] /;
FunctionOfTrigQ[u,2*v,x] *)



