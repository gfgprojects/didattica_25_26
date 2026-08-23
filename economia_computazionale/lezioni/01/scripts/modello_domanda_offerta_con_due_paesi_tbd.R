# parametri ed esogene economia nazionale
10->aH
bH<-5
Qd_barH<-1000
Qs_barH<-250
# parametri ed esogene economia straniera
aF<-20
bF<-25
Qd_barF<-1400
Qs_barF<-500

#matrice A per H
AH<-matrix(c(1,1,aH,-bH),nrow=2)
# vettore
dH<-c(Qd_barH,Qs_barH)
#soluzione autarchia H
xH<-solve(AH,dH)
QHaut<-xH[1]
PHaut<-xH[2]

#matrice A per F
AF<-matrix(c(1,1,aF,-bF),nrow=2)
# vettore
dF<-c(Qd_barF,Qs_barF)
#soluzione autarchia H
xF<-solve(AF,dF)
QFaut<-xF[1]
PFaut<-xF[2]


#MERCATO INTERNAZIONALE
# poiché il prezzo in H è superiore a quello in F, H domanda e F offre nel mercato internazione
#domanda
aW<-aH+bH
Qd_barW<-Qd_barH-Qs_barH
#offerta
bW<-bF+aF
Qs_barW<-Qs_barF-Qd_barF

#matrice A per il mercato internazionale
A<-matrix(c(1,1,aW,-bW),nrow=2)
d<-c(Qd_barW,Qs_barW)

#soluzione
x<-solve(A,d)
QW<-x[1]
PW<-x[2]

#stampa informazioni sullo schermo
cat("H in autarchia\n")
cat("quantità prodotta e consumata",QHaut,"prezzo",PHaut,"\n")
cat("F in autarchia\n")
cat("quantità prodotta e consumata",QFaut,"prezzo",PFaut,"\n")
cat("Mercato internazionale\n")
cat("quantità scambiata",QW,"prezzo",PW,"\n")
cat("\n")
cat("Situazione in H dopo l'apertura del mercato internazionale\n")
consumptionH<-Qd_barH-aH*PW
productionH<-Qs_barH+bH*PW
cat("consumo",consumptionH,"produzione",productionH,"import",consumptionH-productionH,"\n")
cat("prezzo",PW,"\n")
cat("\n")
cat("Situazione in F dopo l'apertura del mercato internazionale\n")
consumptionF<-Qd_barF-aF*PW
productionF<-Qs_barF+bF*PW
cat("consumo",consumptionF,"produzione",productionF,"export",productionF-consumptionF,"\n")
cat("prezzo",PW,"\n")
cat("\n")


cat("Nel mercato internazionale, stabiliamo un valore di scambi diverso da quello di equilibrio:")
Qexchanged<-250
cat(Qexchanged,"\n");

PH<-Qd_barW/aW-Qexchanged/aW
cat("il prezzo in H è ora",PH,"\n")
PF<-Qexchanged/bW-Qs_barW/bW
cat("il prezzo in F è ora",PF,"\n")
priceGap<-abs(PH-PF)
cat("la differenza tra i prezzi è",priceGap,"\n")

#CALCOLO DEI SURPLUS

#prima di iniziare definiamo la funzione che calcola il surplus dei consumatori e dei produttori
#inizio definizione della funzione
calcoloSurplusConsumatoreEProduttore<-function(prezzo,QautonamaD,sensitivitaD,QautonamaS,sensitivitaS){
	#calcolo del surplus dei consumatori
	Qdnaz<-QautonamaD-sensitivitaD*prezzo
	Pmax<-QautonamaD/sensitivitaD
	Cs<-(Pmax-prezzo)*Qdnaz/2
	#calcolor del surplus dei produttori
	Qsnaz<-QautonamaS+sensitivitaS*prezzo
	if(QautonamaS<0){
		p_min<--QautonamaS/sensitivitaS
		Ps<-Qsnaz*(prezzo-p_min)/2
	}else{
		Ps<-QautonamaS*prezzo+(Qsnaz-QautonamaS)*prezzo/2
	}
	CsPs<-c(Cs,Ps)
	names(CsPs)<-c("Cs","Ps")
	CsPs
}
#fine definizione funzione
cat("\n********** CALCOLO DEI SURPLUS **********\n\n")
#inizio calcolo dei surplus
cat("surplus in H in autarchia\n")
surplus.H.autarchia<-calcoloSurplusConsumatoreEProduttore(PHaut,Qd_barH,aH,Qs_barH,bH)
print(surplus.H.autarchia)
surplus.totale.H.autarchia<-sum(surplus.H.autarchia)
cat("il surplu totale è",surplus.totale.H.autarchia,"\n\n")
cat("surplus in F in autarchia\n")
surplus.F.autarchia<-calcoloSurplusConsumatoreEProduttore(PFaut,Qd_barF,aF,Qs_barF,bF)
print(surplus.F.autarchia)
surplus.totale.F.autarchia<-sum(surplus.F.autarchia)
cat("il surplu totale è",surplus.totale.F.autarchia,"\n\n")

#TBD = To Be Done

cat("surplus in H con libero scambio\n")
#TBD
cat("surplus in F con libero scambio\n")
#TBD
cat("surplus in H dopo la politica commerciale\n")
#TBD
cat("surplus in F dopo la politica commerciale\n")
#TBD
cat("variazione dei surplus in H dovuto alla politica commerciale\n")
#TBD
cat("variazione dei surplus in F dovuto alla politica commerciale\n")
#TBD

