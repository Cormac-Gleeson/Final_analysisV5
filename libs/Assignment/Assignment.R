install.packages("tidyverse")
library("tidyverse")
install.packages("plotly")
library("plotly")
install.packages("countrycode")
library(countrycode)


unicef_metadata <- read_csv("unicef_metadata.csv")
unicef_indicator_1 <- read_csv("unicef_indicator_1.csv")

data_join <- full_join(unicef_metadata, unicef_indicator_1)

map_world <- map_data("world")
1

data_join_1980 <- data_join %>% 
  filter(year==1980)

ggplot(map_data_1980) + 
  aes(x = long, y = lat, group = group, fill = LifeExp) + 
  geom_polygon()

map_data_1980<-full_join(data_join_1980, map_world, by =c("country" = "region"))

data_join$Continent <- countrycode(data_join$country, origin = "country.name", destination = "continent")

data_join3$Continent <- ifelse(is.na(data_join3$Continent), "Africa", data_join3$Continent)

data_join %>%
  ggplot() + 
  aes(year, LifeExp, group = country, color = Continent) +
  geom_line()

ggplotly(timeseries_plot_2)

unicef_metadata_1_ <- read_csv("unicef_metadata (1).csv")

data_join3 <- full_join(unicef_metadata_1_, data_join)


 


  options(scipen = 999)

  data_join <- data_join %>%
    rename"GDP Per cap($)" = `GDP per capita (constant 2015 US$)`)

  
  data_join %>%
    +   ggplot() + 
    +   aes(`GDP Per Cap($)`, LifeExp, group = country, color = continent) +
    +   geom_line()
  
  

  
  
 ggplot(data_join, aes(x = year, y = log_GDP, color = Continent)) +
    geom_point() +
    labs(x = "Year", y = "Log(GDP)") +
    ggtitle("Scatterplot of GDP 
          (Logarithmic Scale) vs. year")
  
  ggplotly(Scatterplot2)

  
  data_join3 <- data_join3 %>%
    rename("Proportion Using Limited Drinking Water" = "Proportion of population using limited drinking water services (%)")

  
  data_join3_2000_2022 <-data_join3 %>% 
    filter( year >=2000)  
  
  ggplot(data_join3_2000_2022) +
    aes(`Proportion Using Limited Drinking Water`, year, color = Continent) +
    geom_point(alpha = 0.2) +
    facet_wrap(~ Continent)
  
  

  data_join3$log_GNI <- log(data_join3$`GNI (current US$)`)
  
  
  
  data_join3 <- full_join(unicef_metadata_1_, data_join)

  
  
  
  plot_ly(data = data_join3, x = ~year, y = ~`GNI (current US$)`, color = ~Continent, type = 'scatter', mode = 'lines') %>%
    layout(title = "GNI Per Capita by Continent Over Time",
           xaxis = list(title = "Year"),
           yaxis = list(title = "GNI Per Capita"),
           hovermode = "closest") 
  
  
  
  
  
  
  
    