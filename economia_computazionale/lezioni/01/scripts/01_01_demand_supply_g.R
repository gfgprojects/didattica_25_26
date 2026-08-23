source("01_01_demand_supply_g.R")
#definizione parametri
a<-10
b<-5
#definizione varibili esogene
Qd_bar<-1000
Qs_bar<-250
#calcolo del prezzo di equilibrio
Pe<-(Qd_bar-Qs_bar)/(a+b)
print(paste("il prezzo di equilibrio è ", Pe))
#calcolo della quantità di equilibrio
Qe<-Qd_bar-a*Pe
print(paste("la quantita di equilibrio è ", Qe))
#calcolo del surplus del consumatore
Pmax<-Qd_bar/a
Cs<-Qe*(Pmax-Pe)/2
print(paste("Il surplus del consumatore è ", Cs))
 #calcolo del surplus del produttore
Pmin<--Qs_bar/b
if(Qs_bar<0){
Ps<-Qe*(Pe-Pmin)/2
}else{
Ps<-Qs_bar*Pe+(Qe-Qs_bar)*Pe/2
}
print(paste("il surplus del produttore è ", Ps))

# traccia il grafico

#crea grafico iniziale
plot(c(Qd_bar,0),c(0,Pmax),type="l",col="white",xlab="quantità",ylab="prezzo")
# ascisse dei punti del surplus dei consumatori
Cs_x<-c(0,Qe,0)
# ordinate dei punti del surplus dei consumatori
Cs_y<-c(Pmax,Pe,Pe)

#colora l'area del surplus dei consumatori
polygon(Cs_x,Cs_y,density=NULL,border=0,col="cyan")
#ascisse e ordinate dei punti del surplus dei produttori
if(Qs_bar<0){
	Cp_x<-c(0,Qe,0)
	Cp_y<-c(Pmin,Pe,Pe)
}else{
	Cp_x<-c(0,Qs_bar,Qe,0)
	Cp_y<-c(0,0,Pe,Pe)
}
#colora l'area del surplus dei produttori
polygon(Cp_x,Cp_y,density=NULL,border="white",col="yellow")
#traccia linea della domanda
lines(c(Qd_bar,0),c(0,Pmax),type="l",col="blue")
#traccia linea dell'offerta
lines(c(0,Qd_bar),c(Pmin,(Qd_bar-Qs_bar)/b),type="l",col="red",lty=2)

