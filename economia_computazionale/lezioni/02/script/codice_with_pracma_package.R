library("pracma")
c<-0.63
b<-1500
k<-0.6
h<-2700

C_bar<-55
I_bar<-75
G_bar<-200
T_bar<-110
M_bar<-200
P_bar<-1;

xNames<-c("Y","C","I","R"); 
d<-c(G_bar,C_bar-c*T_bar,I_bar,M_bar/P_bar)
A<-rbind(
c(1,-1,-1,0),
c(-c,1,0,0),
c(0,0,1,b),
c(k,0,0,-h)
)
factLUdiA<-pracma::lu(A)
LUespanso<-factLUdiA
L<-LUespanso$L
U<-LUespanso$U

y<-solve(L,d)
x<-solve(U,y)
toShow<-cbind(xNames,round(x,4))
write.table(toShow,"",quote=F,col.names=F,row.names=F)
