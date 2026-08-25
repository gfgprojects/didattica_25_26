#esercizio diapositiva 13 della presentazione 03_02

riga1<-c(54,14,-11,2)
riga2<-c(14,50,-4,29)
riga3<-c(-11,-4,55,22)
riga4<-c(2,29,22,95)
A<-rbind(riga1,riga2,riga3,riga4)
print(A)
b<-c(1,1,1,1)

# Verifica della dominanza diagonale per riga
valore.assoluto.somma.fuori.diagonale<-numeric()
valore.assoluto.diagonale<-numeric()
#print(valore.assoluto.somma.fuori.diagonale)

#calcolo i valori

for(gf in 1:4){
  valore.assoluto.somma.fuori.diagonale[gf]<-sum(abs(A[gf,]))-abs(A[gf,gf])
  valore.assoluto.diagonale[gf]<-abs(A[gf,gf])
}
#print(cbind(valore.assoluto.diagonale,valore.assoluto.somma.fuori.diagonale))

if(all(valore.assoluto.diagonale>valore.assoluto.somma.fuori.diagonale)){
  cat("A e' a dominanza diagonale per riga")
}

#costruzione della matrice M

MJ<-matrix(0,nrow=nrow(A),ncol=ncol(A))
for(al in 1:nrow(A)){
  MJ[al,al]<-A[al,al]
}
print(MJ)

#soluzione di prova
x<-c(1,1,1,1)
#definizione della tolleranza
tolleranza<-10^(-5)

#calcolo del residuo
residuo<-b-A%*%x

#spazio per memorizzare la storia della norma del residuo
norme.dei.residui<-numeric()
#calcolo norma del residuo
norma.di.r<-sqrt(sum(residuo^2))
norme.dei.residui[1]<-norma.di.r

norma.di.b<-sqrt(sum(b^2))

max.iter<-100
iter.corrente<-0

while(norma.di.r>tolleranza*norma.di.b && iter.corrente<max.iter){
  z<-solve(MJ,residuo)
  x<-x+z
  #codice modifica variabili della prima condizine del ciclo while
  residuo<-b-A%*%x
  norma.di.r<-sqrt(sum(residuo^2))
  norme.dei.residui[length(norme.dei.residui)+1]<-norma.di.r
  #codice modifica variabili della seconda condizine del ciclo while
  iter.corrente<-iter.corrente+1
}

print(paste("iterazione finale",iter.corrente))
print(x)

plot(norme.dei.residui)








