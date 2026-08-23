elementi_matric<-c(1.2,3,4.5,5.2,1.3,6.4,2.1,6.1,4.8)
A<-matrix(elementi_matric,nrow=3,ncol=3)
determinante_di_A<-det(A)
inversa_di_A<-solve(A)
matrice_identita<-inversa_di_A%*%A
print(round(matrice_identita))
      
