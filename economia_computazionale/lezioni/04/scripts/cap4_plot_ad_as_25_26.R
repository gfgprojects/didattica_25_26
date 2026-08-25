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

Pvec<-seq(1.5,4,0.01)

Yvec.ad<-((barC+barI+barG)-(b/h)*(barL-barM/Pvec))/(1-c*(1-t)+b*k/h)
Yvec.as<-barA*barK^alpha*(barW/Pvec*1/(barA*barK^alpha*(1-alpha)))^(-(1-alpha)/alpha)

plot(Yvec.ad,Pvec,type="l",col="red",main="Curve AD-AS",xlab="quantita'",ylab="prezzi")
lines(Yvec.as,Pvec,lty=2)
#points(Yvec.as[seq(1,251,10)],Pvec[seq(1,251,10)])
legend(1000,3.25,c("AD","AS"),lty=c(1,2),col=c("red","black"),bty="n")