#Quarteroni et al. pag. 59 sistema 2.17
library("nleqslv")
#funzione definita dall'utente che contiene le equazioni del sistema
quarteroni.eq.sys<-function(x){
  fx[1]<-x[1]^2+x[2]^2-1
  fx[2]<-sin(pi*0.5*x[1])+x[2]^3
  fx
}

fx<-numeric()
#potesi iniziale di soluzione
x0<-c(1,1)
#calcolo della soluzione
soluzione<-nleqslv(x0,quarteroni.eq.sys)

print(soluzione$x)
