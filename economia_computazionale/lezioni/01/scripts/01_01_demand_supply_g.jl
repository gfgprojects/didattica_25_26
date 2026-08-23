#definizione parametri
a=10
b=5
#definizione varibili esogene
Qd_bar=1000
Qs_bar=250
#calcolo del prezzo di equilibrio
Pe=(Qd_bar-Qs_bar)/(a+b)
println("il prezzo di equilibrio è ",Pe)
#calcolo della quantità di equilibrio
Qe=Qd_bar-a*Pe
println("la quantità di equilibrio è ",Qe)
#calcolo del surplus del consumatore
Pmax=Qd_bar/a
Cs=Qe*(Pmax-Pe)/2
println("il surplus del consumatore è ",Cs)
#calcolo del surplus del produttore
Pmin=Qs_bar/b
if Qs_bar<0
Ps=Qe*(Pe-Pmin)/2
else
Ps=Qs_bar*Pe+(Qe-Qs_bar)*Pe/2
end
println("il surplus del produttore è ",Ps)


#Q=0:2*Qe;
#using Plots

#plot(Q,(Qd_bar.-Q)/a)
#plot!(Q, (Q.-Qs_bar)/b)
#xlim([0,2*Qe]);
#ylim([0,Qd_bar/a]);
