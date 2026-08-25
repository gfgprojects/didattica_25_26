#parametri
c=0.6
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

#x[1] è la Y
#x[2] è P

library("nleqslv")


#funzione che verrà data in input a nleqslv contenente le equazioni del sistema
sistema.ad.as<-function(x){
fx[1]<-x[1]-((barC+barI+barG)-(b/h)*(barL-barM/x[2]))/(1-c*(1-t)+b*k/h)
fx[2]<-x[1]-barA*barK^alpha*(barW/(x[2]*barA*barK^alpha*(1-alpha)))^(-(1-alpha)/alpha)
fx
}

#definizione di fx necessaire per il funzionamento della funzione sopra definita
fx<-numeric()

#ipotesi di soluzione che verrà data in input a nleqslv
x0<-c(1000,1)

# soluzione del sistema non lineare
soluzione.ad.as<-nleqslv(x0,sistema.ad.as)



Y<-soluzione.ad.as$x[1]
P<-soluzione.ad.as$x[2]

#calcolo altre variabili endogene a partire da Y e P

#tasso di interesse
R<-(barL+k*Y-barM/P)/h
#investimenti
I<-barI-b*R
#inposizione
T<-t*Y
#consumo
C<-barC+c*(Y-T)
#lavoro
H<-(barW/(P*barA*barK^alpha*(1-alpha)))^(-1/alpha)

#visualizza la soluzione

cat("Y",round(Y,2),"\n")
cat("P",round(P,2),"\n")
cat("R ",round(100*R,2),"%\n",sep="")
cat("I",round(I,2),"\n")
cat("T",round(T,2),"\n")
cat("C",round(C,2),"\n")
cat("H",round(H,2),"\n")

