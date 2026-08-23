c=0.63
b=1500
k=0.6
h=2700

C_bar=55
I_bar=75
G_bar=200
T_bar=110
M_bar=200
P_bar=1

import numpy as np
xNames=np.array(["Y","C","I","R"]).reshape(4,1) 
A=[
[1,-1,-1,0],
[-c,1,0,0],
[0,0,1,b],
[k,0,0,-h]
]
d=[G_bar,C_bar-c*T_bar,I_bar,M_bar/P_bar]

import scipy as sp

P,L,U=sp.linalg.lu(A)
x=sp.linalg.solve(A,d)
x1=np.array(x.round(4)).reshape(4,1)

toShow=np.hstack([xNames,x1])

for i in range(4):
    print(toShow[i][0],"  ",toShow[i][1])


