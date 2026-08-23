#exec(open('01_01_demand_supply_g.py').read())
#definizione parametri
a=10;
b=5;
#definizione varibili esogene
Qd_bar=1000;
Qs_bar=250;
#calcolo del prezzo di equilibrio
Pe=(Qd_bar-Qs_bar)/(a+b);
print("il prezzo di equilibrio è "+str(Pe))
#calcolo della quantità di equilibrio
Qe=Qd_bar-a*Pe;
print("la quantità di equilibrio è "+str(Qe))
#calcolo del surplus del consumatore
Pmax=Qd_bar/a
Cs=Qe*(Pmax-Pe)/2
print("il surplus del consumatore è "+str(Cs))
#calcolo del surplus del produttore
Pmin=-Qs_bar/b
if Qs_bar<0:
    Ps=Qe*(Pe-Pmin)/2
else:
    Ps=Qs_bar*Pe+(Qe-Qs_bar)*Pe/2

print("il surplus del produttore è "+str(Ps))

# ascisse dei punti del surplus dei consumatori
Cs_x=[0,Qe,0]
# ordinate dei punti del surplus dei consumatori
Cs_y=[Pmax,Pe,Pe]
#ascisse e ordinate dei punti del surplus dei produttori
if Qs_bar:
	Cp_x=[0,Qe,0]
	Cp_y=[Pmin,Pe,Pe]
else:
	Cp_x=[0,Qs_bar,Qe,0]
	Cp_y=[0,0,Pe,Pe]

import matplotlib.pyplot as plt
plt.figure(figsize=(8, 8))
plt.axis([0,Qd_bar,0,Pmax])
#colora l'area del surplus dei consumatori
plt.fill(Cs_x,Cs_y)
#colora l'area del surplus dei produttori
plt.fill(Cp_x,Cp_y)
#traccia linea della domanda
plt.plot([0,Qd_bar],[Pmax,0])
#traccia linea della dell'offerta
plt.plot([0,Qd_bar],[Pmin,(Qd_bar-Qs_bar)/b])
plt.show()

