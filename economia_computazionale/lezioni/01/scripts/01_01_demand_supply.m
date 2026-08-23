#definizione parametri
a=10;
b=5;
#definizione varibili esogene
Qd_bar=1000;
Qs_bar=250;
#calcolo del prezzo di equilibrio
Pe=(Qd_bar-Qs_bar)/(a+b);
disp(strcat(["il prezzo di equilibrio è ",num2str(Pe)]))
#calcolo della quantità di equilibrio
Qe=Qd_bar-a*Pe;
disp(strcat(["la quantità di equilibrio è ",num2str(Qe)]))
#calcolo del surplus del consumatore
Pmax=Qd_bar/a;
Cs=Qe*(Pmax-Pe)/2;
disp(strcat(["il surplus del consumatore è ",num2str(Cs)]))
#calcolo del surplus del produttore
Pmin=Qs_bar/b;
if(Qs_bar<0)
Ps=Qe*(Pe-Pmin)/2;
else
Ps=Qs_bar*Pe+(Qe-Qs_bar)*Pe/2;
endif
disp(strcat(["il surplus del produttore è ",num2str(Ps)]))

