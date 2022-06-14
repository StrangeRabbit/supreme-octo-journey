Anos <- read_excel("Desktop/Rproject/Problema2/EsperancaVida.xlsx", 
                                range = "A9:A70")
EsperancaVidaHomens <- read_excel("Desktop/Rproject/Problema2/EsperancaVida.xlsx", 
                                 range = "AJ9:BQ70")[c("DK - Dinamarca", "EE - Estónia", "SK - Eslováquia")]
EsperancaVidaMulheres <- read_excel("Desktop/Rproject/Problema2/EsperancaVida.xlsx", 
                                 range = "BR9:CY70")[c("DK - Dinamarca", "EE - Estónia", "SK - Eslováquia")]

EsperancaVida <- data.frame(Anos,
                            Homens = EsperancaVidaHomens,
                            Mulheres = EsperancaVidaMulheres)

EsperancaVida <- filter(EsperancaVida, ...1 < 2019 & ...1 > 2002)

ggplot(EsperancaVida, aes(...1)) +
  ylab("Esperança de vida à nascença") + xlab("Ano") +
  geom_line(aes(y = Homens.DK...Dinamarca, color = "Homens Dinamarca")) +
  geom_line(aes(y = Homens.EE...Estónia, color = "Homens Estónia")) +
  geom_line(aes(y = Homens.SK...Eslováquia, color = "Homens Eslováquia")) +
  geom_line(aes(y = Mulheres.DK...Dinamarca, color = "Mulheres Dinamarca")) +
  geom_line(aes(y = Mulheres.EE...Estónia, color = "Mulheres Estónia")) +
  geom_line(aes(y = Mulheres.SK...Eslováquia, color = "Mulheres Eslováquia"))
