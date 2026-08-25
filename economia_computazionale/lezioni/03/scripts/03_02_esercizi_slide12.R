#esercizi slide 12
#Creare una matrice di zeri 5x5. Utilizzando il ciclo for, 
#mettere degli 1 nelle due diagonali della matrice.
A<-matrix(0,ncol=5,nrow=5)
for(i in 1:5){
  A[i,i]<-1
  A[5+1-i,i]<-1
  #oppure
  A[i,5+1-i]<-1
}

#generalizzazione
dimensioneA<-8
A<-matrix(0,ncol=dimensioneA,nrow=dimensioneA)
for(i in 1:dimensioneA){
  A[i,i]<-1
  A[dimensioneA+1-i,i]<-1
}

#Ripetere i due esercizi qui sopra utilizzando il while
A<-matrix(0,ncol=dimensioneA,nrow=dimensioneA)

n_iter<-1
while(n_iter<=dimensioneA){
  A[n_iter,n_iter]<-1
  A[dimensioneA+1-n_iter,n_iter]<-1
  n_iter<-n_iter+1
}
print("sono uscito dal while")

print(A)

#Calcolare la norma euclidea del vettore con ciclo for
squaresum<-0
vec<-c(0.5, 1,-2,0.5,-0.8)
print(vec)
for(i in 1:length(vec)){
  squaresum<-squaresum+vec[i]^2
}
norma_vec<-sqrt(squaresum)
print(norma_vec)

#vettorizzazione

vecsquare<-vec^2
squaresum<-sum(vecsquare)
norma_vec<-sqrt(squaresum)
print(norma_vec)

#molto piu' compatto
norma_vec<-sqrt(sum(vec^2))
print(norma_vec)

# calcolo narma utilizzando la funzione di R
norma_vec<-norm(vec,type="2")
print(norma_vec)











