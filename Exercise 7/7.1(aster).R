# install.packages('terra')
library(terra)
library(tidyverse)
library(ggthemes)
aster = rast("C:/1Uni/1Master/Statistics/IMG/Composite/NA12_24.tif")

print(aster)
summary(aster)
plotRGB(aster, r=3, g=2, b=1, stretch='lin')
plot(aster, col=gray.colors(255))
# 7.1: NDVI (NIR - R) / (NIR + R), NDVI is used to detect vegetation density and is used as a indication for land use when other data isn't available. 

aster_table = as_tibble(aster) 
aster_coord = as.data.frame(aster, xy=T)[,1:2]

cor(aster_table)
ggplot(data = sample_n(aster_table, 10000),aes(x = Red, y = NIR))+
  geom_point()
ggplot(data = sample_n(aster_table, 10000),aes(x = Green, y = Red))+
  geom_point()
ggplot(data = sample_n(aster_table, 10000),aes(x = NIR, y = SWIR1))+
  geom_point()
# 7.2a: The NIR band has the highest varience. Ranges from 0 to ~130
# 7.2b: first PC is dominant in NIR and goes from 0,0 to 125, 12.5 Second PC dominant in SWIR1 ranges from 7.5,75 to 50,12.5

covtable = cov(aster_table)
cov(scale(aster_table))
cor(aster_table)
all.equal(cor(aster_table), cov(scale(aster_table)))

# 7.3: b

eigen_table = eigen(covtable)
X = as.matrix(aster_table)
U = eigen_table$vectors
S = X %*% U

PC1percent = eigen_table$values[1]/sum(eigen_table$values)*100
PC2percent = eigen_table$values[2]/sum(eigen_table$values)*100
PC3percent = eigen_table$values[3]/sum(eigen_table$values)*100
PC4percent = eigen_table$values[4]/sum(eigen_table$values)*100

# 7.4: PC1 = 78,0%, PC2 = 21,7%, PC3 = 0.2% PC4 = 0.1%

cor(S)

# convert to raster image
pc_img = rast(setNames(bind_cols(aster_coord, S), c('x','y',paste0('PC',1:6))))
# make plot of PC1
# (note, we take negative of image for visual purposes here)
plot(-pc_img[[1]], col=gray.colors(255, 0, 1))

NDVI = ((aster[[3]]-aster[[2]])/(aster[[3]]+aster[[2]]))

plot(NDVI, col = gray.colors(255,0,1))

# 7.5a: NDVI has better differences. 
# 7.5b: band 3 (NIR) with red being second importand. Just like an NDVI exploits.

plot(pc_img, col=gray.colors(255, 0, 1))
summary(S)
# 7.6: PC1 and PC2, They have the largest variance. so they actually show useful data. 

X_back = t(U)
all.equal(X[,1:5], X_back[,1:5], check.attributes=F)
S1 = X %*% U
X1 = S1 %*% X_back
summary(X1)

# create image from the matrix and check results
x1_img = rast(setNames(bind_cols(aster_coord, X1), c('x','y',names(aster_table))))
# plot false color
plotRGB(x1_img, r=3, g=2, b=1, stretch='lin')

# plot all bands separately as grayscale
plot(x1_img, col=gray.colors(255, 0, 1))
# 7.7: The original images are a bit clearer/have more contrast but overall the images are very similar.
# 7.8a: The same as for 7.7
# 7.8b: The data is smaller in size. and is faster to load. 

# perform PCA with dedicated function
pca_from_r = prcomp(aster_table, scale=F)
pca_from_r
# 7.9: by taking the square of the standard deviations

pca_from_r$center
pca_from_r$scale
pca_from_r$x

plotRGB(pc_img, r=1, g=2, b=3, stretch='lin')
