#library("Rlinsolve")
library("pracma")

c<-0.63;b<-1500;k<-0.6;h<-2700;
cf<-0.63;bf<-1500;kf<-0.6;hf<-2700;
j<-0.1;l<-10;

C_bar<-55;I_bar<-47;
Cf_bar<-55;If_bar<-47;NX_bar<--10;
G_bar<-150;M_bar<-210;T_bar<-150;P_bar<-1;
Gf_bar<-150;Mf_bar<-210;Tf_bar<-150;Pf_bar<-1;

xNames<-c("Y","C","I","NX","R","Yf","Cf","If","NXf","Rf","E"); 
A<-rbind(
c(1,-1,-1,-1,0,0,0,0,0,0,0),
c(-c,1,0,0,0,0,0,0,0,0,0),
c(0,0,1,0,b,0,0,0,0,0,0),
c(k,0,0,0,-h,0,0,0,0,0,0),
c(0,0,0,0,0,1,-1,-1,-1,0,0),
c(0,0,0,0,0,-cf,1,0,0,0,0),
c(0,0,0,0,0,0,0,1,0,bf,0),
c(0,0,0,0,0,kf,0,0,0,-hf,0),
c(j,0,0,1,0,-j,0,0,0,0,-l*Pf_bar/P_bar),
c(0,0,0,1,0,0,0,0,1,0,0),
c(0,0,0,0,1,0,0,0,0,-1,0)
)

d<-c(G_bar,C_bar-c*T_bar,I_bar,M_bar/P_bar,Gf_bar,Cf_bar-cf*Tf_bar,If_bar,Mf_bar/Pf_bar,NX_bar,0,0);

gmres.solution<-gmres(A,d)
stamp<-cbind(xNames[1:5],round(gmres.solution$x,2)[1:5],xNames[6:10],round(gmres.solution$x,2)[6:10])
write.table(stamp,"",quote=F,row.names=F,col.names=F,sep="\t")
cat(xNames[11],"\t",round(gmres.solution$x,2)[11],"\n")

