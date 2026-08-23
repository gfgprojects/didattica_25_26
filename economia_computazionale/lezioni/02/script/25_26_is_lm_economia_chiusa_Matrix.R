library("Matrix")
#parametri
c<-0.63
b<-1500
k<-0.6
h<-2700
#variabili esogene
C_bar<-55
I_bar<-75
G_bar<-200
T_bar<-110
M_bar<-200
P_bar<-1

#matrice
xNames<-c("Y","C","I","R")
#vettore dei termini noti
d<-c(G_bar,C_bar-c*T_bar,I_bar,M_bar/P_bar)
#definizione delle righe della matrice
riga1<-c(1,-1,-1,0)
riga2<-c(-c,1,0,0)
riga3<-c(0,0,1,b)
riga4<-c(k,0,0,-h)
#funzione rbind che incolla vettori per riga
A<-rbind(riga1,riga2,riga3,riga4)
fattorizzazioneLU_di_A<-Matrix::lu(A)
LUespanso<-expand(fattorizzazioneLU_di_A)
L<-LUespanso$L
U<-LUespanso$U
P<-LUespanso$P

y<-solve(P%*%L,d)
x<-solve(U,y)

#funzione cbind che incolla verroti per colonna
toShow<-cbind(xNames,round(x,digits=4))
write.table(toShow,"",quote=F,col.name=F,row.names=F)







