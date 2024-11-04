library(tidyverse)
library(patchwork)
install.packages("ggplot2")
library(ggplot2)



SA12 = read.csv("C:/1Uni/1Master/Statistics/Projects/Final/Export/12E.csv")
SA13 = read.csv("C:/1Uni/1Master/Statistics/Projects/Final/Export/13E.csv")
SA14 = read.csv("C:/1Uni/1Master/Statistics/Projects/Final/Export/14E.csv")
SA15 = read.csv("C:/1Uni/1Master/Statistics/Projects/Final/Export/15E.csv")
SA16 = read.csv("C:/1Uni/1Master/Statistics/Projects/Final/Export/16E.csv")
SA17 = read.csv("C:/1Uni/1Master/Statistics/Projects/Final/Export/17E.csv")
SA18 = read.csv("C:/1Uni/1Master/Statistics/Projects/Final/Export/18E.csv")
SA19 = read.csv("C:/1Uni/1Master/Statistics/Projects/Final/Export/19E.csv")
SA20 = read.csv("C:/1Uni/1Master/Statistics/Projects/Final/Export/20E.csv")
SA21 = read.csv("C:/1Uni/1Master/Statistics/Projects/Final/Export/21E.csv")
SA22 = read.csv("C:/1Uni/1Master/Statistics/Projects/Final/Export/22E.csv")
SA23 = read.csv("C:/1Uni/1Master/Statistics/Projects/Final/Export/23E.csv")
SA24 = read.csv("C:/1Uni/1Master/Statistics/Projects/Final/Export/24E.csv")

dfSA = data.frame(Y2012 = SA12$MEAN_First,
                  Y2013 = SA13$MEAN,
                  Y2014 = SA14$MEAN,
                  Y2015 = SA15$MEAN,
                  Y2016 = SA16$MEAN,
                  Y2017 = SA17$MEAN,
                  Y2018 = SA18$MEAN,
                  Y2019 = SA19$MEAN,
                  Y2020 = SA20$MEAN,
                  Y2021 = SA21$MEAN,
                  Y2022 = SA22$MEAN,
                  Y2023 = SA23$MEAN,
                  Y2024 = SA24$MEAN)

dfSAT = t(dfSA)
dfSAT = as.data.frame(dfSAT)

dfSAT = mutate(dfSAT, Year = c("2012", "2013", "2014", "2015", "2016", "2017","2018", "2019", "2020", "2021", "2022", "2023", "2024"))

plot(dfSAT$Year, dfSAT$V1)


ggplot(data = dfSAT, aes(x = Year, y = V1)) + 
  geom_line()
