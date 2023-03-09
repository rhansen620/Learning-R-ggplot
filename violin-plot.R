#Violin plot of GDP data
#Rachel Hansen
#rachelhansen@arizona.edu
#2023-02-28

library(ggplot2)

gapminder <- read.csv(file = "data/gapminder.csv")

#create violin plot object
gdp_violin <- ggplot(data = gapminder[gapminder$continent != "Oceania", ],
                      mapping = aes(x = continent,
                                    y=gdpPercap,
                                    fill = continent)) +
  geom_violin()+
  scale_y_log10()+
  ylab("GDP per capita")+
  theme_bw()+
  facet_wrap(~year)+
  scale_fill_manual(values = c("darkorchid2", "gold4", "deepskyblue4", "#003300", "red4")) +
  theme(axis.text.x = element_blank(),
        axis.title.x = element_blank())

#print plot
gdp_violin
