using WooldridgeDatasets, GLM , DataFrames

df= DataFrame(wooldridge("HTV"))

reg= lm(@formula( educ ~ motheduc + fatheduc +abil + (abil^2)  ) , df)

table_coef = coeftable(reg)

println("tabela de coeficientes : \n$table_reg")