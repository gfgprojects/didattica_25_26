c=0.63;
b=1500;
k=0.6;
h=2700;

C_bar=55;
I_bar=75;
G_bar=200;
T_bar=110;
M_bar=200;
P_bar=1;

xNames=["Y";"C";"I";"R"]; 
A=[
1 -1 -1 0; 
-c 1 0 0;
0 0 1 b; 
k 0 0 -h
];
d=[G_bar;C_bar-c*T_bar;I_bar;M_bar/P_bar];

[L,U]=lu(A);
y=L\d;
x=U\y;
stamp=[xNames num2str(round(x*10000)/10000)];
disp(cstrcat(stamp(1:4,1),repmat(repelem(" ",4)',1,3),stamp(1:4,2:9)));

