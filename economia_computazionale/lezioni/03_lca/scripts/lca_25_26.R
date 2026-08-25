processes<-read.csv("processes_data.csv")
#print(cbind(processes$name,processes$wheat.process))
#prendiamo le colonne dalla 3 alla 5 poiche' contengono numeri e traformiamo in una matrice
processesM<-as.matrix(processes[,3:5])
#estrazione matrice tecnosfera
tecnosferaM<-processesM[1:3,]
biosferaM<-processesM[4:dim(processesM)[1],]
domanda<-c(0,0,1)
#calcolo numero di volte implemtazione processi produttivi
s_star<-solve(tecnosferaM,domanda)
#calcolo quantità di emissioni e risorse naturali utilizzate
g_star<-biosferaM%*%s_star

#Fase di calcolo impatti ambientali

caratterizzazione<-read.csv("characterization_data.csv")
caratterizzazioneM<-as.matrix(caratterizzazione[,1:54])
impatti<-caratterizzazioneM%*%g_star
print(cbind(impatti,caratterizzazione$short.unit.name,caratterizzazione$method.name))