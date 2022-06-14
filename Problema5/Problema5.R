set.seed(1132)
numeros <- rexp(710, 0.3)

num <- 0

for(i in numeros){
  if(i>2){
    num = num + 1
  }
}

V_empirico <- num/710  #valor empirico
V_empirico
V_teorico <- 1 -  pexp(2, rate = 0.3) #valor teorico
V_teorico

abs(V_teorico - V_empirico)
