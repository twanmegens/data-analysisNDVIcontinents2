library(tidyverse)
library(patchwork)
# install.packages("ggplot2")
library(ggplot2)


Combined = read.csv("C:/1Uni/1Master/Statistics/Projects/Final/Export/Combined.csv")

fit_1 = lm(K1 ~ Year, data = Combined)
fit_2 = lm(K2 ~ Year, data = Combined)
fit_3 = lm(K3 ~ Year, data = Combined)
fit_4 = lm(K4 ~ Year, data = Combined)
fit_5 = lm(K5 ~ Year, data = Combined)
fit_6 = lm(K6 ~ Year, data = Combined)
fit_7 = lm(K7 ~ Year, data = Combined)
fit_8 = lm(K8 ~ Year, data = Combined)
fit_9 = lm(K9 ~ Year, data = Combined)
fit_10 = lm(K10 ~ Year, data = Combined)
fit_11 = lm(K11 ~ Year, data = Combined)
fit_12 = lm(K12 ~ Year, data = Combined)
fit_13 = lm(K13 ~ Year, data = Combined)
fit_14 = lm(K14 ~ Year, data = Combined)
fit_15 = lm(K15 ~ Year, data = Combined)
fit_16 = lm(K16 ~ Year, data = Combined)
fit_17 = lm(K17 ~ Year, data = Combined)
fit_18 = lm(K18 ~ Year, data = Combined)
fit_19 = lm(K19 ~ Year, data = Combined)
fit_20 = lm(K20 ~ Year, data = Combined)
fit_21 = lm(K21 ~ Year, data = Combined)
fit_22 = lm(K22 ~ Year, data = Combined)
fit_23 = lm(K23 ~ Year, data = Combined)
fit_24 = lm(K24 ~ Year, data = Combined)
fit_25 = lm(K25 ~ Year, data = Combined)
fit_26 = lm(K26 ~ Year, data = Combined)
fit_27 = lm(K27 ~ Year, data = Combined)
fit_28 = lm(K28 ~ Year, data = Combined)
fit_29 = lm(K28 ~ Year, data = Combined)
fit_30 = lm(K30 ~ Year, data = Combined)
fit_31 = lm(K31 ~ Year, data = Combined)
fit_32 = lm(K32 ~ Year, data = Combined)


# predictions = predict(fit_1, interval = "confidence", level = 0.99)
# lwr = predictions[, "lwr"]
# upr = predictions[, "upr"]

# plot both lines on top of points
ggplot(Combined) +
  geom_point(aes(x = Year, y = K1, color = "K1")) +
  geom_abline(aes(color = 'K1',
                  intercept = fit_1$coefficients[1],
                  slope = fit_1$coefficients[2])) +
  geom_point(aes(x = Year, y = K2, color = 'K2'))+
  geom_abline(aes(color = 'K2',
                  intercept = fit_2$coefficients[1],
                  slope = fit_2$coefficients[2])) +
  geom_point(aes(x = Year, y = K3, color = "K3")) +
  geom_abline(aes(color = 'K3',
                  intercept = fit_3$coefficients[1],
                  slope = fit_3$coefficients[2])) +
  geom_point(aes(x = Year, y = K4, color = 'K4'))+
  geom_abline(aes(color = 'K4',
                  intercept = fit_4$coefficients[1],
                  slope = fit_4$coefficients[2])) +
  geom_point(aes(x = Year, y = K5, color = "K5")) +
  geom_abline(aes(color = 'K5',
                  intercept = fit_5$coefficients[1],
                  slope = fit_5$coefficients[2])) +
  geom_point(aes(x = Year, y = K6, color = 'K6'))+
  geom_abline(aes(color = 'K6',
                  intercept = fit_6$coefficients[1],
                  slope = fit_6$coefficients[2])) +
  geom_point(aes(x = Year, y = K7, color = "K7")) +
  geom_abline(aes(color = 'K7',
                  intercept = fit_7$coefficients[1],
                  slope = fit_7$coefficients[2])) +
  geom_point(aes(x = Year, y = K8, color = 'K8'))+
  geom_abline(aes(color = 'K8',
                  intercept = fit_8$coefficients[1],
                  slope = fit_8$coefficients[2])) +
  geom_point(aes(x = Year, y = K9, color = "K9")) +
  geom_abline(aes(color = 'K9',
                  intercept = fit_9$coefficients[1],
                  slope = fit_9$coefficients[2])) +
  geom_point(aes(x = Year, y = K10, color = 'K10'))+
  geom_abline(aes(color = 'K10',
                  intercept = fit_10$coefficients[1],
                  slope = fit_10$coefficients[2])) +
  geom_point(aes(x = Year, y = K11, color = "K11")) +
  geom_abline(aes(color = 'K11',
                  intercept = fit_11$coefficients[1],
                  slope = fit_11$coefficients[2])) +
  geom_point(aes(x = Year, y = K12, color = 'K12'))+
  geom_abline(aes(color = 'K12',
                  intercept = fit_12$coefficients[1],
                  slope = fit_12$coefficients[2])) +
  geom_point(aes(x = Year, y = K13, color = "K13")) +
  geom_abline(aes(color = 'K13',
                  intercept = fit_13$coefficients[1],
                  slope = fit_13$coefficients[2])) +
  geom_point(aes(x = Year, y = K14, color = 'K14'))+
  geom_abline(aes(color = 'K14',
                  intercept = fit_14$coefficients[1],
                  slope = fit_14$coefficients[2])) +
  geom_point(aes(x = Year, y = K15, color = "K15")) +
  geom_abline(aes(color = 'K15',
                  intercept = fit_15$coefficients[1],
                  slope = fit_15$coefficients[2])) +
  geom_point(aes(x = Year, y = K16, color = 'K16'))+
  geom_abline(aes(color = 'K16',
                  intercept = fit_16$coefficients[1],
                  slope = fit_16$coefficients[2])) +
  geom_point(aes(x = Year, y = K17, color = "K17")) +
  geom_abline(aes(color = 'K17',
                  intercept = fit_17$coefficients[1],
                  slope = fit_17$coefficients[2])) +
  geom_point(aes(x = Year, y = K18, color = 'K18'))+
  geom_abline(aes(color = 'K18',
                  intercept = fit_18$coefficients[1],
                  slope = fit_18$coefficients[2])) +
  geom_point(aes(x = Year, y = K19, color = "K19")) +
  geom_abline(aes(color = 'K19',
                  intercept = fit_19$coefficients[1],
                  slope = fit_19$coefficients[2])) +
  geom_point(aes(x = Year, y = K20, color = 'K20'))+
  geom_abline(aes(color = 'K20',
                  intercept = fit_20$coefficients[1],
                  slope = fit_20$coefficients[2])) +
  geom_point(aes(x = Year, y = K21, color = "K21")) +
  geom_abline(aes(color = 'K21',
                  intercept = fit_21$coefficients[1],
                  slope = fit_21$coefficients[2])) +
  geom_point(aes(x = Year, y = K22, color = 'K22'))+
  geom_abline(aes(color = 'K22',
                  intercept = fit_22$coefficients[1],
                  slope = fit_22$coefficients[2])) +
  geom_point(aes(x = Year, y = K23, color = "K23")) +
  geom_abline(aes(color = 'K23',
                  intercept = fit_23$coefficients[1],
                  slope = fit_23$coefficients[2])) +
  geom_point(aes(x = Year, y = K24, color = 'K24'))+
  geom_abline(aes(color = 'K24',
                  intercept = fit_24$coefficients[1],
                  slope = fit_24$coefficients[2])) +
  geom_point(aes(x = Year, y = K25, color = "K25")) +
  geom_abline(aes(color = 'K25',
                  intercept = fit_25$coefficients[1],
                  slope = fit_25$coefficients[2])) +
  geom_point(aes(x = Year, y = K26, color = 'K26'))+
  geom_abline(aes(color = 'K26',
                  intercept = fit_26$coefficients[1],
                  slope = fit_26$coefficients[2])) +
  geom_point(aes(x = Year, y = K27, color = "K27")) +
  geom_abline(aes(color = 'K27',
                  intercept = fit_27$coefficients[1],
                  slope = fit_27$coefficients[2])) +
  geom_point(aes(x = Year, y = K28, color = 'K28'))+
  geom_abline(aes(color = 'K28',
                  intercept = fit_28$coefficients[1],
                  slope = fit_28$coefficients[2])) +
  geom_point(aes(x = Year, y = K29, color = "K29")) +
  geom_abline(aes(color = 'K29',
                  intercept = fit_29$coefficients[1],
                  slope = fit_29$coefficients[2])) +
  geom_point(aes(x = Year, y = K30, color = 'K30'))+
  geom_abline(aes(color = 'K30',
                  intercept = fit_30$coefficients[1],
                  slope = fit_30$coefficients[2])) +
  geom_point(aes(x = Year, y = K31, color = "K31")) +
  geom_abline(aes(color = 'K31',
                  intercept = fit_31$coefficients[1],
                  slope = fit_31$coefficients[2])) +
  geom_point(aes(x = Year, y = K32, color = 'K32'))+
  geom_abline(aes(color = 'K32',
                  intercept = fit_32$coefficients[1],
                  slope = fit_32$coefficients[2])) +
  labs(x = 'Year', y = 'Value')


FID = c('K1','K2','K3','K4','K5','K6','K7','K8','K9','K10','K11','K12','K13','K14','K15','K16','K17','K18','K19','K20','K21','K22','K23','K24','K25','K26','K27','K28','K29','K30','K31','K32')
KoppeC = c('ET', 'Cfb','Cfb','BSk','Csb','Bsk','ET','BWh','Cwa','Af','Cfb','Cfa','Cwa','BSh','Cwa','BSk','BWk','Cwb','Af','ET','BSh','BWh','Aw','Aw','Af','Af','Am','Af','Am','Cfb','Aw','BSh')

DFrelate = data.frame(column1 = FID, column2 = KoppeC)

