library(pracma)
#parametri nazionali
c<-0.63
b<-1500
k<-0.6
h<-2700
#parametri stranieri
cf<-0.63
bf<-1500
kf<-0.6
hf<-2700
j<-0.1
l<-10
#variabili esogene nazionali
C_bar<-55
I_bar<-47
NX_bar<--10
G_bar<-150
M_bar<-210
T_bar<-150
P_bar<-1
#variabili esogene straniere
Cf_bar<-55
If_bar<-47
Gf_bar<-150
Mf_bar<-210
Tf_bar<-150
Pf_bar<-1

Names<-c("Y","C","I","NX","R","Yf","Cf","If","NfX","Rf","E")
A<-rbind(
  c(1,-1,-1,-1,0,0,0,0,0,0,0),
  c(-c,1,0,0,0,0,0,0,0,0,0),
  c(0,0,1,0,b,0,0,0,0,0,0),
  c(k,0,0,0,-h,0,0,0,0,0,0),
  c(0,0,0,0,0,1,-1,-1,-1,0,0),
  c(0,0,0,0,0,-cf,1,0,0,0,0),
  c(0,0,0,0,0,0,0,1,0,bf,0),
  c(0,0,0,0,0,kf,0,0,0,-hf,0),
  c(j,0,0,1,0,-j,0,0,0,0,-l*Pf_bar/P_bar),
  c(0,0,0,1,0,0,0,0,1,0,0),
  c(0,0,0,0,1,0,0,0,0,-1,0)
)
#vettore dei termini noti
d<-c(G_bar,C_bar-c*T_bar,I_bar,M_bar/P_bar,Gf_bar,Cf_bar-cf*Tf_bar,If_bar,Mf_bar/Pf_bar,NX_bar,0,0)
#calcolo soluzione
gmres.solution<-gmres(A,d)
#presentazione dei risultati
#tabella di 4 colonne 
colonna1<-Names[1:5]
colonna2<-round(gmres.solution$x[1:5],3)
colonna3<-Names[6:10]
colonna4<-round(gmres.solution$x[6:10],3)

dastampare<-cbind(colonna1,colonna2,colonna3,colonna4)
write.table(dastampare,"",quote=F,row.names = F, col.names = F,sep="\t")
cat(Names[11],"\t",round(gmres.solution$x[11],3),"\n")

#variazione dell'imposizione
T_bar<-130
d<-c(G_bar,C_bar-c*T_bar,I_bar,M_bar/P_bar,Gf_bar,Cf_bar-cf*Tf_bar,If_bar,Mf_bar/Pf_bar,NX_bar,0,0)
gmres.solution1<-gmres(A,d)
print(gmres.solution1$x-gmres.solution$x)


#variazione della spesa pubblica
T_bar<-150
G_bar<-170
d<-c(G_bar,C_bar-c*T_bar,I_bar,M_bar/P_bar,Gf_bar,Cf_bar-cf*Tf_bar,If_bar,Mf_bar/Pf_bar,NX_bar,0,0)
gmres.solution2<-gmres(A,d)
print(gmres.solution2$x-gmres.solution$x)





