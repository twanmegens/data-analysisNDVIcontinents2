# load the tidyverse packages
# library(tidyverse)
# load the dataset
table612 = read_delim(
  file = 'https://www.kgs.ku.edu/Mathgeo/Books/Stat/ASCII/TABLE612.TXT',
  delim = "\t",
)

ggplot(data = table612, aes(x = x1, y = x2))+
  geom_point()

cova = cov(table612)
eigen_table = eigen(cova)
eigen_table
X = as.matrix(table612)
U = eigen_table$vectors
S = X %*% U

plot(X[,1:2], S[,1:2])

U1 = U[,1]
S2 = X %*% U1

plot(S2, rep(0,25))

Xnew = S2 %*% t(U1)

plot(Xnew)