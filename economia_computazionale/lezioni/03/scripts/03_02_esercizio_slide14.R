#Economia con 3 settori

A<-rbind(c(0.2,0.3,0.2),c(0.4,0.1,0.2),c(0.1,0.3,0.2))
b<-c(10,5,6)
identityM<-diag(nrow(A))
solution<-solve(identityM-A,b)
print(solution)

