# input data

# MPG Analysis

mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

cor(mpg_table)

summary(lm(mpg ~ `vehicle length` + `vehicle weight` + `spoiler angle` + `ground clearance` + AWD,data=mpg_table))


# Suspension Coil Analysis

coil_table = read.csv(file='Suspension_Coil.csv',check.names=T, stringsAsFactors = F)

summary(coil_table)

var(coil_table$PSI)

sd(coil_table$PSI)

# Suspension Coil T-Test

t.test(coil_table$PSI, mu=1500)
