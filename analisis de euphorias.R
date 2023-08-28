
####### Analisis: regresión lineal ######
#vamos con el porcentaje negro con el tamaño de la epifaringe "largo"

file.choose()# despues se copia la dirección y se aplica a la funcion read.table
dataeuphorias <- read.csv(file = "C:\\Users\\Waffle\\OneDrive\\Documentos\\keren_materias\\Try_Fails\\tenoch.carpeta\\Euphoria - Hoja 1.csv", header = T, sep = "," ,quote = "\t", dec = ".")
dataeuphorias
                        
regrelieu1 <- lm(por_negro~largo, dataeuphorias)
summary(regrelieu1)

grafeupho <- ggplot(dataeuphorias, aes(x= largo, y= por_negro) ) + 
  geom_point(colour="red", size=1, shape=1) + 
  geom_smooth(method = lm, colour="cyan") + 
  ylab("Porcentaje color: negro") 

grafeupho

#################################################################

#porcentaje negro  con el tamaño de la epifarige "ancho"

regrelieu2 <- lm(por_negro~ancho, dataeuphorias)
summary(regrelieu2) 

grafeupho2 <- ggplot(dataeuphorias, aes(x= ancho, y= por_negro) ) + 
  geom_point(colour="red", size=1, shape=1) + 
  geom_smooth(method = lm, colour="cyan") + 
  ylab("Porcentaje color:negro")

grafeupho2





################################################################

# 





