%definizione parametri
a=10;
b=5;
%definizione varibili esogene
Qd_bar=1000;
Qs_bar=250;
%calcolo del prezzo di equilibrio
Pe=(Qd_bar-Qs_bar)/(a+b);
disp(strcat(["il prezzo di equilibrio è ",num2str(Pe)]))
%calcolo della quantità di equilibrio
Qe=Qd_bar-a*Pe;
disp(strcat(["la quantità di equilibrio è ",num2str(Qe)]))
%calcolo del surplus del consumatore
Pmax=Qd_bar/a;
Cs=Qe*(Pmax-Pe)/2;
disp(strcat(["il surplus del consumatore è ",num2str(Cs)]))
%calcolo del surplus del produttore
Pmin=-Qs_bar/b;
if(Qs_bar<0)
Ps=Qe*(Pe-Pmin)/2;
else
Ps=Qs_bar*Pe+(Qe-Qs_bar)*Pe/2;
end
disp(strcat(["il surplus del produttore è ",num2str(Ps)]))

%traccia il grafico

%crea grafico iniziale
plot([Qd_bar 0],[0 Pmax],'b');
% ascisse dei punti del surplus dei consumatori
Cs_x=[0,Qe,0];
% ordinate dei punti del surplus dei consumatori
Cs_y=[Pmax,Pe,Pe];
hold on; %permettere di fare aggiunte al grafico già creato
%colora l'area del surplus dei consumatori
fill(Cs_x,Cs_y,'c','LineStyle','none');
%ascisse e ordinate dei punti del surplus dei produttori
if(Qs_bar<0)
	Cp_x=[0,Qe,0];
	Cp_y=[Pmin,Pe,Pe];
else
	Cp_x=[0,Qs_bar,Qe,0];
	Cp_y=[0+1,0+1,Pe,Pe];
end
%colora l'area del surplus dei produttori
fill(Cp_x,Cp_y,'y','LineStyle','none');
%traccia linea della domanda
line([Qd_bar 0],[0 Pmax],'color','b');
%traccia linea dell'offerta
line([0 Qd_bar],[Pmin (Qd_bar-Qs_bar)/b],'linestyle','--','color','r');
xlabel("quantità");
ylabel("prezzo");
ylim([0,Qd_bar/a]);
