library("nleqslv")
#parametri
c<-0.6
b<-1500
k<-0.2
h<-1000
t<-0.2
alpha<-0.5

#variabili esogene
barA<-1
barK<-30000
barC<-160
barI<-100
barG<-200
barM<-1000
barW<-50
barL<-225

#funzione definita dall'utente che contiene le equazioni del sistema
sistema.ad.as<-function(x){
  fx[1]<-x[1]-((barC+barI+barG)-(b/h)*(barL-barM/x[2]))/(1-c*(1-t)+b*k/h)
  fx[2]<-x[1]-barA*barK^alpha*(barW/x[2]*1/(barA*barK^alpha*(1-alpha)))^(-(1-alpha)/alpha)
  fx
}

fx<-numeric()
#potesi iniziale di soluzione
x0<-c(1000,1)
#calcolo della soluzione
soluzione<-nleqslv(x0,sistema.ad.as)

Y<-soluzione$x[1]
P<-soluzione$x[2]

#Calcolo altre variabili endogene

#tasso di interesse
R<-(barL+k*Y-barM/P)/h
#investimenti
I<-barI-b*R
#imposizione
T<-t*Y
#consumo
C<-barC+c*(Y-T)
#lavoro
H<-(barW/(P*barA*barK^alpha*(1-alpha)))^(-1/alpha)

#visualizzazione soluzione
cat("Y",round(Y,2),"\n")
cat("P",round(P,2),"\n")
cat("R",round(100*R,2),"\n")
cat("I",round(I,2),"\n")
cat("T",round(T,2),"\n")
cat("C",round(C,2),"\n")
cat("H",round(H,2),"\n")

