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
Int[PolyLog[n_,a_.*(b_.*x_^p_.)^q_.],x_Symbol] :=
  x*PolyLog[n,a*(b*x^p)^q] -
  Dist[p*q,Int[PolyLog[n-1,a*(b*x^p)^q],x]] /;
FreeQ[{a,b,p,q},x] && RationalQ[n] && n>0


(* ::Code:: *)
Int[PolyLog[n_,a_.*(b_.*x_^p_.)^q_.],x_Symbol] :=
  x*PolyLog[n+1,a*(b*x^p)^q]/(p*q) -
  Dist[1/(p*q),Int[PolyLog[n+1,a*(b*x^p)^q],x]] /;
FreeQ[{a,b,p,q},x] && RationalQ[n] && n<-1


(* ::Code:: *)
Int[PolyLog[n_,a_.*(b_.*x_^p_.)^q_.]/x_,x_Symbol] :=
  PolyLog[n+1,a*(b*x^p)^q]/(p*q) /;
FreeQ[{a,b,n,p,q},x]


(* ::Code:: *)
Int[x_^m_.*PolyLog[n_,a_.*(b_.*x_^p_.)^q_.],x_Symbol] :=
  x^(m+1)*PolyLog[n,a*(b*x^p)^q]/(m+1) -
  Dist[p*q/(m+1),Int[x^m*PolyLog[n-1,a*(b*x^p)^q],x]] /;
FreeQ[{a,b,m,p,q},x] && RationalQ[n] && n>0 && NonzeroQ[m+1]


(* ::Code:: *)
Int[x_^m_.*PolyLog[n_,a_.*(b_.*x_^p_.)^q_.],x_Symbol] :=
  x^(m+1)*PolyLog[n+1,a*(b*x^p)^q]/(p*q) -
  Dist[(m+1)/(p*q),Int[x^m*PolyLog[n+1,a*(b*x^p)^q],x]] /;
FreeQ[{a,b,m,p,q},x] && RationalQ[n] && n<-1 && NonzeroQ[m+1]


(* ::Code:: *)
Int[PolyLog[n_,u_]/(a_+b_.*x_),x_Symbol] :=
  Dist[1/b,Subst[Int[PolyLog[n,Regularize[Subst[u,x,-a/b+x/b],x]]/x,x],x,a+b*x]] /;
FreeQ[{a,b,n},x]


(* ::Code:: *)
Int[PolyLog[n_,c_.*(a_.+b_.*x_)^p_.],x_Symbol] :=
  x*PolyLog[n,c*(a+b*x)^p] -
  Dist[p,Int[PolyLog[n-1,c*(a+b*x)^p],x]] +
  Dist[a*p,Int[PolyLog[n-1,c*(a+b*x)^p]/(a+b*x),x]] /;
FreeQ[{a,b,c,p},x] && RationalQ[n] && n>0


(* ::Code:: *)
Int[x_^m_.*PolyLog[n_,c_.*(a_.+b_.*x_)^p_.],x_Symbol] :=
  x^(m+1)*PolyLog[n,c*(a+b*x)^p]/(m+1) -
  Dist[b*p/(m+1),Int[x^(m+1)*PolyLog[n-1,c*(a+b*x)^p]/(a+b*x),x]] /;
FreeQ[{a,b,c,m,p},x] && RationalQ[n] && n>0 && IntegerQ[m] && m>0


(* ::Code:: *)
Int[PolyLog[n_,c_.*f_^(a_.+b_.*x_)],x_Symbol] :=
  PolyLog[n+1,c*f^(a+b*x)]/(b*Log[f]) /;
FreeQ[{a,b,c,n},x]


(* ::Code:: *)
Int[x_^m_.*PolyLog[n_,c_.*f_^(a_.+b_.*x_)],x_Symbol] :=
  x^m*PolyLog[n+1,c*f^(a+b*x)]/(b*Log[f]) -
  Dist[m/(b*Log[f]),Int[x^(m-1)*PolyLog[n+1,c*f^(a+b*x)],x]] /;
FreeQ[{a,b,c,n},x] && RationalQ[m] && m>0


(* ::Code:: *)
Int[Log[a_.*x_^n_.]^p_.*PolyLog[q_,b_.*x_^m_.]/x_,x_Symbol] :=
  Log[a*x^n]^p*PolyLog[q+1,b*x^m]/m -
  Dist[n*p/m,Int[Log[a*x^n]^(p-1)*PolyLog[q+1,b*x^m]/x,x]] /;
FreeQ[{a,b,m,n,q},x] && RationalQ[p] && p>0