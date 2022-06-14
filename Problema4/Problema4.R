UtentesData <- read_excel("Desktop/Rproject/Problema4/Utentes.xlsx", 
                            range = "A1:D77")

ggplot(UtentesData, aes(Idade, Colesterol)) +
  geom_point(aes(color = "red")) +
  theme_bw() +
  geom_smooth(method = "auto", level = 0, color = "black")
