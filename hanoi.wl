hanoi[n_,x_,y_,z_]:=
Module[{},
  If[
       n==0, ,
      hanoi[n-1,x,z,y];
      Print[x," to ",y];
      hanoi[n-1,z,y,x];
  ]
]

hanoi[3,"A","B","C"]
