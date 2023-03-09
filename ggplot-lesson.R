#Plot gapminder data
#Rachel Hansen
#rachelhansen@arizona.edu
#2023-02-20

#download gapminder data from web
download.file(url = "https://tinyurl.com/gapminder-five-year-csv", 
              destfile = "data/gapminder.csv")

install.packages("ggplot2")
library(ggplot2)

#load data
gapminder <- read.csv(file = "data/gapminder.csv")

#create plot object
lifeExp_plot <- ggplot(data = gapminder,
                       mapping = aes(x = gdpPercap, 
                                     y = lifeExp,
                                     color = continent)) +
  geom_point(alpha = 0.5) +
  scale_color_manual(values = c("red", 'orange', 'forestgreen', 'darkblue', '#CC22CC'))+
  scale_x_log10()+
  xlab("GDP per capita")+
  ylab("Life expectancy")

#draw plot
lifeExp_plot

#save plot to png file
ggsave(filename = "output/gdp-lifeexp.png",
       plot = lifeExp_plot)
