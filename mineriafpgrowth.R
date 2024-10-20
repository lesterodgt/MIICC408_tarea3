install.packages("fim4r")
library(fim4r)

data = read.csv('C:\\Users\\Lester\\Documents\\MAESTRIA\\INTO MINERIA DE DATOS\\tarea3\\db_csv_\\MIGRACION_BDP.csv', sep=',')


reglas <- fim4r(data, method = "fpgrowth", target="rules", supp = .2, conf = .5)


reglasframe <- as(reglas, "data.frame")

options(scipen=999)
library(dplyr)

data2 <- select(data, -MUNICIPIO)

reglas2 <- fim4r(data2, method = "fpgrowth", target="rules", supp = .2, conf = .5)
options(scipen=999)
reglasframe2 <- as(reglas2, "data.frame")


dataGUATEMALA <- subset(data, DEPARTAMENTO == 1)
dataGUATEMALA <- select(dataGUATEMALA, -DEPARTAMENTO)
reglasgUATE <- fim4r(dataGUATEMALA, method = "fpgrowth", target="rules", supp = .2, conf = .5)

reglasframeGuate <- as(reglasgUATE, "data.frame")



reglasgUATE <- fim4r(dataGUATEMALA, method = "fpgrowth", target="rules", supp = .1, conf = .6)

reglasframeGuate <- as(reglasgUATE, "data.frame")


