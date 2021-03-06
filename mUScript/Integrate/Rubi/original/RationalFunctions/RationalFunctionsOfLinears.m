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



Int[a_,x_Symbol] :=
   a*x /;
IndependentQ[a,x]


Int[c_*(a_+b_.*x_),x_Symbol] :=
  c*(a+b*x)^2/(2*b) /;
FreeQ[{a,b,c},x]


Int[c_*(a_+b_.*x_)^n_,x_Symbol] :=
  Dist[c,Int[(a+b*x)^n,x]] /;
FreeQ[{a,b,c,n},x] && NonzeroQ[n+1]


If[ShowSteps,

Int[a_*u_,x_Symbol] :=
  Module[{lst=ConstantFactor[u,x]},
  ShowStep["","Int[a*u,x]","a*Int[u,x]",Hold[
  Dist[a*lst[[1]],Int[lst[[2]],x]]]]] /;
SimplifyFlag && FreeQ[a,x] && Not[MatchQ[u,b_*v_ /; FreeQ[b,x]]],

Int[a_*u_,x_Symbol] :=
  Module[{lst=ConstantFactor[u,x]},
  Dist[a*lst[[1]],Int[lst[[2]],x]]] /;
FreeQ[a,x] && Not[MatchQ[u,b_*v_ /; FreeQ[b,x]]]]


If[ShowSteps,

Int[u_,x_Symbol] :=
  Module[{lst=ConstantFactor[Simplify[Denominator[u]],x]},
  ShowStep["","Int[a*u,x]","a*Int[u,x]",Hold[
  Dist[1/lst[[1]],Int[Numerator[u]/lst[[2]],x]]]] /;
 lst[[1]]=!=1] /;
SimplifyFlag && (
	MatchQ[u,1/(a_+b_.*x) /; FreeQ[{a,b},x]] ||
	MatchQ[u,x^m_./(a_+b_.*x^n_) /; FreeQ[{a,b,m,n},x] && ZeroQ[m-n+1]] ||
	MatchQ[u,1/((a_.+b_.*x)*(c_+d_.*x)) /; FreeQ[{a,b,c,d},x]] ||
	MatchQ[u,(d_.+e_.*x)/(a_+b_.*x+c_.*x^2) /; FreeQ[{a,b,c,d,e},x]] ||
	MatchQ[u,(c_.*(a_.+b_.*x)^n_)^m_ /; FreeQ[{a,b,c,m,n},x] && ZeroQ[m*n+1]]),

Int[u_,x_Symbol] :=
  Module[{lst=ConstantFactor[Simplify[Denominator[u]],x]},
  Dist[1/lst[[1]],Int[Numerator[u]/lst[[2]],x]] /;
 lst[[1]]=!=1] /;
	MatchQ[u,1/(a_+b_.*x) /; FreeQ[{a,b},x]] ||
	MatchQ[u,x^m_./(a_+b_.*x^n_) /; FreeQ[{a,b,m,n},x] && ZeroQ[m-n+1]] ||
	MatchQ[u,1/((a_.+b_.*x)*(c_+d_.*x)) /; FreeQ[{a,b,c,d},x]] ||
	MatchQ[u,(d_.+e_.*x)/(a_+b_.*x+c_.*x^2) /; FreeQ[{a,b,c,d,e},x]] ||
	MatchQ[u,(c_.*(a_.+b_.*x)^n_)^m_ /; FreeQ[{a,b,c,m,n},x] && ZeroQ[m*n+1]]]


If[ShowSteps,

Int[u_/v_,x_Symbol] :=
  Module[{lst=ConstantFactor[v,x]},
  ShowStep["","Int[a*u,x]","a*Int[u,x]",Hold[
  Dist[1/lst[[1]],Int[u/lst[[2]],x]]]] /;
 lst[[1]]=!=1] /;
SimplifyFlag && Not[FalseQ[DerivativeDivides[v,u,x]]],

Int[u_/v_,x_Symbol] :=
  Module[{lst=ConstantFactor[v,x]},
  Dist[1/lst[[1]],Int[u/lst[[2]],x]] /;
 lst[[1]]=!=1] /;
Not[FalseQ[DerivativeDivides[v,u,x]]]]


Int[u_.*v_^m_*w_^n_,x_Symbol] :=
  (v^m*w^n)*Int[u,x] /;
FreeQ[{m,n},x] && ZeroQ[m+n] && ZeroQ[v+w]


Int[u_.*(a_.+b_.*x_^m_.)^p_.*(c_.+d_.*x_^n_.)^q_., x_Symbol] :=
  (a+b*x^m)^p*(c+d*x^n)^q/x^(m*p)*Int[u*x^(m*p),x] /;
FreeQ[{a,b,c,d,m,n,p,q},x] && ZeroQ[a+d] && ZeroQ[b+c] && ZeroQ[m+n] && ZeroQ[p+q]


Int[1/(a_+b_.*x_),x_Symbol] :=
  Log[-a-b*x]/b /;
FreeQ[{a,b},x] && NegativeCoefficientQ[a]


Int[1/(a_.+b_.*x_),x_Symbol] :=
  Log[a+b*x]/b /;
FreeQ[{a,b},x]


Int[x_^n_.,x_Symbol] :=
  x^(n+1)/(n+1) /;
IndependentQ[n,x] && NonzeroQ[n+1]


Int[(a_.+b_.*x_)^n_,x_Symbol] :=
  (a+b*x)^(n+1)/(b*(n+1)) /;
FreeQ[{a,b,n},x] && NonzeroQ[n+1]


If[ShowSteps,

Int[u_,x_Symbol] :=
  If[PolynomialQ[u,x],
    ShowStep["","Int[a+b*x+c*x^2+\[CenterEllipsis],x]","a*x+b*x^2/2+c*x^3/3+\[CenterEllipsis]",Hold[
    IntegrateMonomialSum[u,x]]],
  ShowStep["","Int[a+b/x+c*x^m+\[CenterEllipsis],x]","a*x+b*Log[x]+c*x^(m+1)/(m+1)+\[CenterEllipsis]",Hold[
  IntegrateMonomialSum[u,x]]]] /;
SimplifyFlag && MonomialSumQ[u,x],

Int[u_,x_Symbol] :=
  IntegrateMonomialSum[u,x] /;
MonomialSumQ[u,x]]


If[ShowSteps,

Int[u_,x_Symbol] :=
  Module[{lst=SplitMonomialTerms[u,x]},
  ShowStep["","Int[a*u+b*v+\[CenterEllipsis],x]","a*Int[u,x]+b*Int[v,x]+\[CenterEllipsis]",Hold[
  Int[lst[[1]],x] + SplitFreeIntegrate[lst[[2]],x]]] /;
 SumQ[lst[[1]]] && Not[FreeQ[lst[[1]],x]] && lst[[2]]=!=0] /;
SimplifyFlag && SumQ[u],

Int[u_,x_Symbol] :=
  Module[{lst=SplitMonomialTerms[u,x]},
  Int[lst[[1]],x] + SplitFreeIntegrate[lst[[2]],x] /;
 SumQ[lst[[1]]] && Not[FreeQ[lst[[1]],x]] && lst[[2]]=!=0] /;
SumQ[u]]


If[ShowSteps,

Int[x_^m_.*u_,x_Symbol] :=
  ShowStep["","Int[\!\(\*SuperscriptBox[\"x\", \"m\"]\)*(u+v+\[CenterEllipsis]),x]","Int[\!\(\*SuperscriptBox[\"x\", \"m\"]\)*u+\!\(\*SuperscriptBox[\"x\", \"m\"]\)*v+\[CenterEllipsis],x]",Hold[
  Int[Map[Function[x^m*#],u],x]]] /;
SimplifyFlag && IntegerQ[m] && SumQ[u],

Int[x_^m_.*u_,x_Symbol] :=
  Int[Map[Function[x^m*#],u],x] /;
IntegerQ[m] && SumQ[u]]


Int[1/(x_*(a_+b_.*x_^n_.)),x_Symbol] :=
  -2*ArcTanh[1+2*b*x^n/a]/(a*n) /;
FreeQ[{a,b,n},x] && PosQ[n] && (RationalQ[a] || RationalQ[b/a])


Int[1/(x_*(a_+b_.*x_^n_.)),x_Symbol] :=
  Log[x]/a - Log[a+b*x^n]/(a*n) /;
FreeQ[{a,b,n},x] && PosQ[n] && Not[RationalQ[a] || RationalQ[b/a]]


Int[1/(x_*(a_+b_.*x_^n_.)),x_Symbol] :=
  -Log[b+a*x^(-n)]/(a*n) /;
FreeQ[{a,b,n},x] && NegQ[n]


Int[1/(a_.*x_+b_.*x_^n_),x_Symbol] :=
  Int[1/(x*(a+b*x^(n-1))),x] /;
FreeQ[{a,b,n},x]


Int[x_^m_.*(a_+b_.*x_)^n_,x_Symbol] :=
  -x^(m+1)*(a+b*x)^(n+1)/(a*(n+1)) /;
FreeQ[{a,b,m,n},x] && ZeroQ[m+n+2] && NonzeroQ[n+1]


Int[x_^m_.*(a_+b_.*x_)^n_,x_Symbol] :=
  -x^(m+1)*(a+b*x)^(n+1)/(a*(n+1)) +
  Dist[(m+n+2)/(a*(n+1)),Int[x^m*(a+b*x)^(n+1),x]] /;
FreeQ[{a,b},x] && IntegersQ[m,n] && 0<m<-n-2 && 2*m+n+1>0


Int[x_^m_*(a_.+b_.*x_)^n_.,x_Symbol] :=
  x^(m+1)*(a+b*x)^n/(m+n+1) +
  Dist[a*n/(m+n+1),Int[x^m*(a+b*x)^(n-1),x]] /;
FreeQ[{a,b},x] && IntegersQ[m,n] && 0<n<m/2


Int[x_^m_*(a_.+b_.*x_)^n_.,x_Symbol] :=
  x^(m+1)*(a+b*x)^(n+1)/(a*(m+1)) -
  Dist[b*(m+n+2)/(a*(m+1)),Int[x^(m+1)*(a+b*x)^n,x]] /;
FreeQ[{a,b},x] && IntegersQ[m,n] && 0<n<-m-2 && m+2*n-1>0


Int[x_^m_.*(a_.+b_.*x_)^n_,x_Symbol] :=
  x^m*(a+b*x)^(n+1)/(b*(m+n+1)) -
  Dist[a*m/(b*(m+n+1)),Int[x^(m-1)*(a+b*x)^n,x]] /;
FreeQ[{a,b},x] && IntegersQ[m,n] && 0<m<n/2


Int[(a_+b_.*x_)^n_.*(c_+d_.*x_)^n_.,x_Symbol] :=
  Int[(a*c+b*d*x^2)^n,x] /;
FreeQ[{a,b,c,d},x] && IntegerQ[n] && ZeroQ[b*c+a*d]


Int[(a_+b_.*x_)^m_.*(c_+d_.*x_)^n_.,x_Symbol] :=
  Dist[(d/b)^n,Int[(a+b*x)^(m+n),x]] /;
FreeQ[{a,b,c,d,m},x] && ZeroQ[b*c-a*d] && IntegerQ[n] && 
(Not[IntegerQ[m]] || LeafCount[a+b*x]<=LeafCount[c+d*x])


Int[1/((a_+b_.*x_)*(c_+d_.*x_)),x_Symbol] :=
  -2*ArcTanh[(b*c+a*d)/(b*c-a*d) + 2*b*d*x/(b*c-a*d)]/(b*c-a*d) /;
FreeQ[{a,b,c,d},x] && RationalQ[b*c-a*d] && b*c-a*d!=0


Int[(a_+b_.*x_)^m_.*(c_+d_.*x_)^n_,x_Symbol] :=
  -(a+b*x)^(m+1)*(c+d*x)^(n+1)/((n+1)*(b*c-a*d)) /;
FreeQ[{a,b,c,d,m,n},x] && ZeroQ[m+n+2] && NonzeroQ[b*c-a*d] && NonzeroQ[n+1]


Int[(a_+b_.*x_)^m_.*(c_+d_.*x_)^n_,x_Symbol] :=
  -(a+b*x)^(m+1)*(c+d*x)^(n+1)/((n+1)*(b*c-a*d)) +
  Dist[b*(m+n+2)/((n+1)*(b*c-a*d)),Int[(a+b*x)^m*(c+d*x)^(n+1),x]] /;
FreeQ[{a,b,c,d},x] && IntegersQ[m,n] && NonzeroQ[b*c-a*d] && 0<m<-n-2 && 2*m+n+1>0


Int[(a_+b_.*x_)^m_*(c_+d_.*x_)^n_.,x_Symbol] :=
  (a+b*x)^(m+1)*(c+d*x)^n/(b*(m+n+1)) +
  Dist[n*(b*c-a*d)/(b*(m+n+1)),Int[(a+b*x)^m*(c+d*x)^(n-1),x]] /;
FreeQ[{a,b,c,d},x] && IntegersQ[m,n] && NonzeroQ[b*c-a*d] && 0<n<=m


Int[x_^m_.*(a_+b_.*x_)^n_.*(c_+d_.*x_)^n_.,x_Symbol] :=
  Int[x^m*(a*c+b*d*x^2)^n,x] /;
FreeQ[{a,b,c,d,m},x] && IntegerQ[n] && ZeroQ[b*c+a*d]


Int[(a_+b_.*x_^n_.)^p_.*(c_+d_.*x_^n_.), x_Symbol] :=
  c*x*(a+b*x^n)^(p+1)/a /;
FreeQ[{a,b,c,d,n,p},x] && ZeroQ[a*d-b*c*(n*(p+1)+1)]


Int[x_^m_.*(a_+b_.*x_^n_.)^p_.*(c_+d_.*x_^n_.), x_Symbol] :=
  c*x^(m+1)*(a+b*x^n)^(p+1)/(a*(m+1)) /;
FreeQ[{a,b,c,d,m,n,p},x] && NonzeroQ[m+1] && ZeroQ[a*d*(m+1)-b*c*(m+n*(p+1)+1)]


Int[x_^m_.*(a_+b_.*x_^n_.)^p_.*(c_.*x_^q_.+d_.*x_^r_.), x_Symbol] :=
  c*x^(m+q+1)*(a+b*x^n)^(p+1)/(a*(m+q+1)) /;
FreeQ[{a,b,c,d,m,n,p,q,r},x] && ZeroQ[r-n-q] && NonzeroQ[m+q+1] && 
	ZeroQ[a*d*(m+q+1)-b*c*(m+q+n*(p+1)+1)]


Int[(a_+b_.*x_)^m_.*(c_+d_.*x_)^n_.*(e_+f_.*x_), x_Symbol] :=
  f*(a+b*x)^(m+1)*(c+d*x)^(n+1)/(b*d*(m+n+2)) /;
FreeQ[{a,b,c,d,e,f,m,n},x] && NonzeroQ[m+n+2] && ZeroQ[f*(b*c*(m+1)+a*d*(n+1))-b*d*e*(m+n+2)]


Int[x_*(a_+b_.*x_)^n_.*(c_+d_.*x_)^p_.,x_Symbol] :=
  (a+b*x)^(n+1)*(c+d*x)^(p+1)/(b*d*(2+n+p)) -
  Dist[(b*c*(n+1)+a*d*(p+1))/(b*d*(2+n+p)), Int[(a+b*x)^n*(c+d*x)^p, x]] /;
FreeQ[{a,b,c,d,n,p},x] && IntegersQ[n,p] && 0<n<=2 && p>5


Int[x_^m_*(a_+b_.*x_)^n_.*(c_+d_.*x_)^p_.,x_Symbol] :=
  x^(m-1)*(a+b*x)^(n+1)*(c+d*x)^(p+1)/(b*d*(1+m+n+p)) -
  Dist[a*c*(m-1)/(b*d*(1+m+n+p)), Int[x^(m-2)*(a+b*x)^n*(c+d*x)^p, x]] -
  Dist[(b*c*(m+n)+a*d*(m+p))/(b*d*(1+m+n+p)), Int[x^(m-1)*(a+b*x)^n*(c+d*x)^p, x]] /;
FreeQ[{a,b,c,d,n,p},x] && IntegersQ[m,n,p] && 0<m<=2 && 0<n<=2 && p>5
