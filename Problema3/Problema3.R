QualidadeARO3 <- read_excel("Desktop/Rproject/Problema3/QualidadeARO3.xlsx", 
                            range = "A1:J8785",
                            col_types = c("numeric","numeric","numeric","numeric","numeric","numeric","numeric","numeric","numeric","numeric")
                            )[c("Restelo", "Mem-Martins")]

QualidadeARO3$X <- row.names(QualidadeARO3)

QualidadeARO3Organizado <- pivot_longer(QualidadeARO3, 
                  cols = c(1,2), 
                  names_to = "Localizacao", 
                  values_to = "QualidadeARO3")

ggplot(QualidadeARO3Organizado, aes(QualidadeARO3, fill = Localizacao)) + 
  geom_histogram(alpha = 0.7, 
                 binwidth = 5,
                 position = "identity") +
  xlab("Niveis de ozono")
