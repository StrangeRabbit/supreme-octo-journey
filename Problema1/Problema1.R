ResiduosPerCapita <- read_excel("Desktop/Rproject/Problema1/ResiduosPerCapita.xlsx", 
                                            range = "A12:C43")

names(ResiduosPerCapita) <- c("Paises", 2004, 2018)

ResiduosPerCapitaFiltered <- filter(ResiduosPerCapita, 
                                    Paises == 'FR - França' | 
                                      Paises == 'PT - Portugal' | 
                                      Paises == 'SE - Suécia')

ResiduosPerCapitaReorganized <- pivot_longer(ResiduosPerCapitaFiltered, 
                                             cols=c('2004', '2018'), 
                                             names_to='Anos', 
                                             values_to="ResiduosPerCapita")

ggplot(ResiduosPerCapitaReorganized, 
       aes(x = Paises, y = ResiduosPerCapita, fill = Anos)) +
       geom_bar(stat='identity', position='dodge') +
  ylab("Residuos Per Capita") + xlab("")

