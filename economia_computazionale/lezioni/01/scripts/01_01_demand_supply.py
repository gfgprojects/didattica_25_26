#exec(open('01_01_demand_supply.py').read())
#definizione parametri
a=10
b=5
#definizione varibili esogene
Qd_bar=1000
Qs_bar=250
#calcolo del prezzo di equilibrio
Pe=(Qd_bar-Qs_bar)/(a+b)
print("il prezzo di equilibrio è "+str(Pe))
#calcolo della quantità di equilibrio
Qe=Qd_bar-a*Pe
print("la quantità di equilibrio è "+str(Qe))
#calcolo del surplus del consumatore
Pmax=Qd_bar/a
Cs=Qe*(Pmax-Pe)/2
print("il surplus del consumatore è "+str(Cs))
#calcolo del surplus del produttore
Pmin=Qs_bar/b
if Qs_bar<0:
    Ps=Qe*(Pe-Pmin)/2
else:
    Ps=Qs_bar*Pe+(Qe-Qs_bar)*Pe/2
#
print("il surplus del produttore è "+str(Ps))

