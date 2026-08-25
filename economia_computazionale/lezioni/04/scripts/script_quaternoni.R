library("nleqslv")
quaterenoni.eq.sys<-function(x){
fx[1]<-x[1]^2+x[2]^2-1
fx[2]<-sin(pi*0.5*x[1])+x[2]^3
fx
}

fx<-numeric()
x0<-c(1,1)
alpha<-nleqslv(x0,quaterenoni.eq.sys)
print(alpha$x)
