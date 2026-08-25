#esercizio da
#Miranda and Fackler(2000) Applied computational economics and finance. Esercizio 5 pag. 21)
#diapositiva 13 della presentazione 03_02


A<-rbind(c(54,14,-11,2),c(14,50,-4,29),c(-11,-4,55,22),c(2,29,22,95))
b<-c(1,1,1,1)

##Verifica della dominanza diagonale per riga

#preparo lo spazio per archiviare i valori che mi servono
valore.assoluto.somma.furi.diagonale<-numeric()
valore.assoluto.diagonale<-numeric()
#calcolo i valori che mi servono
for(gf in 1:4){
	valore.assoluto.somma.furi.diagonale[gf]<-sum(abs(A[gf,]))-abs(A[gf,gf])
	valore.assoluto.diagonale[gf]<-abs(A[gf,gf])
}

if(all(valore.assoluto.diagonale>valore.assoluto.somma.furi.diagonale)){
	cat("A è a dominanza diagonale per riga\n")
}

#costruzione della matrice M (Jacobi)

MJ<-matrix(0,nrow=nrow(A),ncol=ncol(A))
for(al in 1:4){
	MJ[al,al]<-A[al,al]
}

# soluzione di prova
x<-c(1,1,1,1)
#definizione della tolleranza
tolleranza<-10^(-4) 

#Calcolo del residuo
residuo<-b-A%*%x

#spazio per memorizzare le norme del residuo
norme.dei.residui<-numeric()
#calcolo norma del residuo
norma.di.r<-sqrt(sum(residuo^2))
norme.dei.residui[1]<-norma.di.r


norma.di.b<-sqrt(sum(b^2))

max.iter<-10
iter.corrente<-0

while(norma.di.r>tolleranza*norma.di.b && iter.corrente<max.iter){
	z<-solve(MJ,residuo)
	x<-x+z
	residuo<-b-A%*%x
	norma.di.r<-sqrt(sum(residuo^2))
	norme.dei.residui[length(norme.dei.residui)+1]<-norma.di.r
	iter.corrente<-iter.corrente+1
}

print(x)

