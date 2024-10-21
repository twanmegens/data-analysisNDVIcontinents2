# install.packages('raster')

library(terra)
library(tidyverse)
library(ggthemes)
library(raster)


Afrika2012 = rast("C:/1Uni/1Master/Statistics/IMG/Afrika/2012/AF_eVSH_NDVI.2012.117-126.3KM.VI_NDVI.006.2021039000949.tif")
Afrika2015 = rast("C:/1Uni/1Master/Statistics/IMG/Afrika/2015/AF_eVSH_NDVI.2015.116-125.3KM.VI_NDVI.006.2021031111454.tif")
Afrika2018 = rast("C:/1Uni/1Master/Statistics/IMG/Afrika/2018/AF_eVSH_NDVI.2018.116-125.3KM.VI_NDVI.006.2021024072438.tif")
Afrika2021 = rast("C:/1Uni/1Master/Statistics/IMG/Afrika/2021/AF_eVSH_NDVI.2021.116-125.3KM.VI_NDVI.006.2021131004423.tif")
Afrika2024 = rast("C:/1Uni/1Master/Statistics/IMG/Afrika/2024/AF_eVSH_NDVI.2024.117-126.3KM.VI_NDVI.001.2024129193447.tif")

Afrika2012[Afrika2012<0] = NA
Afrika2015[Afrika2015<0] = NA
Afrika2018[Afrika2018<0] = NA
Afrika2021[Afrika2021<0] = NA
Afrika2024[Afrika2024<0] = NA

plot(Afrika2012, col=gray.colors(255))
plot(Afrika2015, col=gray.colors(255))
plot(Afrika2018, col=gray.colors(255))
plot(Afrika2021, col=gray.colors(255))
plot(Afrika2024, col=gray.colors(255))


