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
KoppeC = c('ET', 'Cfb','Cfb','BSk','Csb','BSk','ET','BWh','Cwa','Af','Cfb','Cfa','Cwa','BSh','Cwa','BSk','BWk','Cwb','Af','ET','BSh','BWh','Aw','Aw','Af','Af','Am','Af','Am','Cfb','Aw','BSh')

DFrelate = data.frame(column1 = FID, column2 = KoppeC)

#compare Af climate
ggplot(Combined) +
  geom_point(aes(x = Year, y = K10, color = "K10")) +
  geom_abline(aes(color = 'K10',
                  intercept = fit_10$coefficients[1],
                  slope = fit_10$coefficients[2])) +
  geom_point(aes(x = Year, y = K19, color = 'K19'))+
  geom_abline(aes(color = 'K19',
                  intercept = fit_19$coefficients[1],
                  slope = fit_19$coefficients[2])) +
  geom_point(aes(x = Year, y = K25, color = "K25")) +
  geom_abline(aes(color = 'K25',
                  intercept = fit_25$coefficients[1],
                  slope = fit_25$coefficients[2])) +
  geom_point(aes(x = Year, y = K26, color = 'K26'))+
  geom_abline(aes(color = 'K26',
                  intercept = fit_26$coefficients[1],
                  slope = fit_26$coefficients[2])) +
  geom_point(aes(x = Year, y = K28, color = "K28")) +
  geom_abline(aes(color = 'K28',
                  intercept = fit_28$coefficients[1],
                  slope = fit_28$coefficients[2])) +
  labs(x = 'Year', y = 'Mean NDVI Value')


#compare Am climate
ggplot(Combined) +
  geom_point(aes(x = Year, y = K27, color = "K27")) +
  geom_abline(aes(color = 'K27',
                  intercept = fit_27$coefficients[1],
                  slope = fit_27$coefficients[2])) +
  geom_point(aes(x = Year, y = K29, color = 'K29'))+
  geom_abline(aes(color = 'K29',
                  intercept = fit_29$coefficients[1],
                  slope = fit_29$coefficients[2])) +
  labs(x = 'Year', y = 'Mean NDVI Value')

#compare Aw climate
ggplot(Combined) +
  geom_point(aes(x = Year, y = K23, color = "K23")) +
  geom_abline(aes(color = 'K23',
                  intercept = fit_23$coefficients[1],
                  slope = fit_23$coefficients[2])) +
  geom_point(aes(x = Year, y = K24, color = 'K24'))+
  geom_abline(aes(color = 'K24',
                  intercept = fit_24$coefficients[1],
                  slope = fit_24$coefficients[2])) +
  geom_point(aes(x = Year, y = K31, color = 'K31'))+
  geom_abline(aes(color = 'K31',
                  intercept = fit_31$coefficients[1],
                  slope = fit_31$coefficients[2])) +
  labs(x = 'Year', y = 'Mean NDVI Value')

#compare BSh climate
ggplot(Combined) +
  geom_point(aes(x = Year, y = K14, color = "K14")) +
  geom_abline(aes(color = 'K14',
                  intercept = fit_14$coefficients[1],
                  slope = fit_14$coefficients[2])) +
  geom_point(aes(x = Year, y = K21, color = 'K21'))+
  geom_abline(aes(color = 'K21',
                  intercept = fit_21$coefficients[1],
                  slope = fit_21$coefficients[2])) +
  geom_point(aes(x = Year, y = K32, color = 'K32'))+
  geom_abline(aes(color = 'K32',
                  intercept = fit_32$coefficients[1],
                  slope = fit_32$coefficients[2])) +
  labs(x = 'Year', y = 'Mean NDVI Value')

#compare BSk climate
ggplot(Combined) +
  geom_point(aes(x = Year, y = K4, color = "K4")) +
  geom_abline(aes(color = 'K4',
                  intercept = fit_4$coefficients[1],
                  slope = fit_4$coefficients[2])) +
  geom_point(aes(x = Year, y = K6, color = 'K6'))+
  geom_abline(aes(color = 'K6',
                  intercept = fit_6$coefficients[1],
                  slope = fit_6$coefficients[2])) +
  geom_point(aes(x = Year, y = K16, color = 'K16'))+
  geom_abline(aes(color = 'K16',
                  intercept = fit_16$coefficients[1],
                  slope = fit_16$coefficients[2])) +
  labs(x = 'Year', y = 'Mean NDVI Value')

#compare BWh climate
ggplot(Combined) +
  geom_point(aes(x = Year, y = K8, color = "K8")) +
  geom_abline(aes(color = 'K8',
                  intercept = fit_8$coefficients[1],
                  slope = fit_8$coefficients[2])) +
  geom_point(aes(x = Year, y = K22, color = 'K22'))+
  geom_abline(aes(color = 'K22',
                  intercept = fit_22$coefficients[1],
                  slope = fit_22$coefficients[2])) +
  labs(x = 'Year', y = 'Mean NDVI Value')

#compare Cfb climate
ggplot(Combined) +
  geom_point(aes(x = Year, y = K2, color = "K2")) +
  geom_abline(aes(color = 'K2',
                  intercept = fit_2$coefficients[1],
                  slope = fit_2$coefficients[2])) +
  geom_point(aes(x = Year, y = K11, color = 'K11'))+
  geom_abline(aes(color = 'K11',
                  intercept = fit_11$coefficients[1],
                  slope = fit_11$coefficients[2])) +
  geom_point(aes(x = Year, y = K3, color = "K3")) +
  geom_abline(aes(color = 'K3',
                  intercept = fit_3$coefficients[1],
                  slope = fit_3$coefficients[2])) +
  geom_point(aes(x = Year, y = K30, color = 'K30'))+
  geom_abline(aes(color = 'K30',
                  intercept = fit_30$coefficients[1],
                  slope = fit_30$coefficients[2])) +
  labs(x = 'Year', y = 'Mean NDVI Value')

#compare Cwa climate
ggplot(Combined) +
  geom_point(aes(x = Year, y = K9, color = "K9")) +
  geom_abline(aes(color = 'K9',
                  intercept = fit_9$coefficients[1],
                  slope = fit_9$coefficients[2])) +
  geom_point(aes(x = Year, y = K13, color = 'K13'))+
  geom_abline(aes(color = 'K13',
                  intercept = fit_13$coefficients[1],
                  slope = fit_13$coefficients[2])) +
  geom_point(aes(x = Year, y = K15, color = 'K15'))+
  geom_abline(aes(color = 'K15',
                  intercept = fit_15$coefficients[1],
                  slope = fit_15$coefficients[2])) +
  labs(x = 'Year', y = 'Mean NDVI Value')

#compare ET climate
ggplot(Combined) +
  geom_point(aes(x = Year, y = K1, color = "K1")) +
  geom_abline(aes(color = 'K1',
                  intercept = fit_1$coefficients[1],
                  slope = fit_1$coefficients[2])) +
  geom_point(aes(x = Year, y = K7, color = 'K7'))+
  geom_abline(aes(color = 'K7',
                  intercept = fit_7$coefficients[1],
                  slope = fit_7$coefficients[2])) +
  geom_point(aes(x = Year, y = K20, color = 'K20'))+
  geom_abline(aes(color = 'K20',
                  intercept = fit_20$coefficients[1],
                  slope = fit_20$coefficients[2])) +
  labs(x = 'Year', y = 'Mean NDVI Value')

#####residual testing

#mutating the data to include fit residuals
Combined=mutate(Combined,residuals=fit_21$residuals)

#show(Combined)

#plotting of residuals
ggplot(data=Combined)+
  geom_point(aes(x=Year, y=residuals))

######renaming

Kv1 = c(Combined$K1)
Kv2 = c(Combined$K2)
Kv3 = c(Combined$K3)
Kv4 = c(Combined$K4)
Kv5 = c(Combined$K5)
Kv6 = c(Combined$K6)
Kv7 = c(Combined$K7)
Kv8 = c(Combined$K8)
Kv9 = c(Combined$K9)
Kv10 = c(Combined$K10)
Kv11 = c(Combined$K11)
Kv12 = c(Combined$K12)
Kv13 = c(Combined$K13)
Kv14 = c(Combined$K14)
Kv15 = c(Combined$K15)
Kv16 = c(Combined$K16)
Kv17 = c(Combined$K17)
Kv18 = c(Combined$K18)
Kv19 = c(Combined$K19)
Kv20 = c(Combined$K20)
Kv21 = c(Combined$K21)
Kv22 = c(Combined$K22)
Kv23 = c(Combined$K23)
Kv24 = c(Combined$K24)
Kv25 = c(Combined$K25)
Kv26 = c(Combined$K26)
Kv27 = c(Combined$K27)
Kv28 = c(Combined$K28)
Kv29 = c(Combined$K29)
Kv30 = c(Combined$K30)
Kv31 = c(Combined$K31)
Kv32 = c(Combined$K32)

#####anova

# Af 10.19.25.26.28 anova
AfVector = c(Kv10,Kv19,Kv25,Kv26,Kv28)
AfLength = c(rep('Kv10', length(Kv10)),rep('Kv19', length(Kv19)), rep('Kv25', length(Kv25)), rep('Kv26', length(Kv26)),rep('Kv28', length(Kv28)) )
AfDATA = data.frame(AfVector, AfLength)
AfANOVA = aov(AfVector~AfLength, data = AfDATA)
anova(AfANOVA)

# Am27.29 anova
AmVector = c(Kv27,Kv29)
AmLength = c(rep('Kv27', length(Kv27)),rep('Kv29', length(Kv29)))
AmDATA = data.frame(AmVector, AmLength)
AmANOVA = aov(AmVector~AmLength, data = AmDATA)
anova(AmANOVA)

# Aw23.24.31 anova
AwVector = c(Kv23,Kv24,Kv31)
AwLength = c(rep('Kv23', length(Kv23)),rep('Kv24', length(Kv24)), rep('Kv31', length(Kv31)))
AwDATA = data.frame(AwVector, AwLength)
AwANOVA = aov(AwVector~AwLength, data = AwDATA)
anova(AwANOVA)

# BSh14.21.32 anova
BShVector = c(Kv14,Kv21,Kv32)
BShLength = c(rep('Kv14', length(Kv14)),rep('Kv21', length(Kv21)), rep('Kv32', length(Kv32)))
BShDATA = data.frame(BShVector, BShLength)
BShANOVA = aov(BShVector~BShLength, data = BShDATA)
anova(BShANOVA)

# BSk6.4.16 anova
BSkVector = c(Kv6,Kv4,Kv16)
BSkLength = c(rep('Kv6', length(Kv6)),rep('Kv4', length(Kv4)), rep('Kv16', length(Kv16)))
BSkDATA = data.frame(BSkVector, BSkLength)
BSkANOVA = aov(BSkVector~BSkLength, data = BSkDATA)
anova(BSkANOVA)

# BWh8.22 anova
BWhVector = c(Kv8,Kv22)
BWhLength = c(rep('Kv8', length(Kv8)),rep('Kv22', length(Kv22)))
BWhDATA = data.frame(BWhVector, BWhLength)
BWhANOVA = aov(BWhVector~BWhLength, data = BWhDATA)
anova(BWhANOVA)

# Cfb2.3.11.30 anova
CfbVector = c(Kv2,Kv3,Kv11,Kv30)
CfbLength = c(rep('Kv2', length(Kv2)),rep('Kv3', length(Kv3)), rep('Kv11', length(Kv11)), rep('Kv30', length(Kv30)))
CfbDATA = data.frame(CfbVector, CfbLength)
CfbANOVA = aov(CfbVector~CfbLength, data = CfbDATA)
anova(CfbANOVA)

# Cwa9.13.15 anova
CwaVector = c(Kv13,Kv9,Kv15)
CwaLength = c(rep('Kv13', length(Kv13)),rep('Kv9', length(Kv9)), rep('Kv15', length(Kv15)))
CwaDATA = data.frame(CwaVector, CwaLength)
CwaANOVA = aov(CwaVector~CwaLength, data = CwaDATA)
anova(CwaANOVA)

# ET1.7.20 anova
ETVector = c(Kv1,Kv7,Kv20)
ETLength = c(rep('Kv1', length(Kv1)),rep('Kv7', length(Kv7)), rep('Kv20', length(Kv20)))
ETDATA = data.frame(ETVector, ETLength)
ETANOVA = aov(ETVector~ETLength, data = ETDATA)
anova(ETANOVA)


###f-test####

# Af 10.19.25.26.28 ftest
var.test(Kv10, Kv19)
var.test(Kv10, Kv25)
var.test(Kv26, Kv10)
var.test(Kv28, Kv10)
var.test(Kv25, Kv19)
var.test(Kv26, Kv19)
var.test(Kv28, Kv19)
var.test(Kv26, Kv25)
var.test(Kv28, Kv25)
var.test(Kv28, Kv26)
#not 28,19

# Aw23.24.31 ftest
var.test(Kv24, Kv23)
var.test(Kv31, Kv23)
var.test(Kv24, Kv31)
#all good

# BSh14.21.32 ftest
var.test(Kv21, Kv14)
var.test(Kv32, Kv14)
var.test(Kv21, Kv32)
#only 21,32

# BSk6.4.16 ftest
var.test(Kv6, Kv4)
var.test(Kv6, Kv16)
var.test(Kv16, Kv4)

# BWh8.22  ftest
var.test(Kv8, Kv22)
#too much

# Cfb2.3.11.30  ftest
var.test(Kv2, Kv3)
var.test(Kv2, Kv11)
var.test(Kv2, Kv30)
var.test(Kv3, Kv11)
var.test(Kv3, Kv30)
var.test(Kv11, Kv30)

# Cwa9.13.15  ftest
var.test(Kv9, Kv13)
var.test(Kv9, Kv15)
var.test(Kv13, Kv15)
#only 9,13

# ET1.7.20  ftest
var.test(Kv1, Kv7)
var.test(Kv1, Kv20)
var.test(Kv7, Kv20)


###t-test####

# Af 10.19.25.26.28 ttest
t.test(Kv10,Kv19)
t.test(Kv10,Kv25)
t.test(Kv10,Kv26)
t.test(Kv10,Kv28)
t.test(Kv19,Kv25)
t.test(Kv19,Kv26)
t.test(Kv19,Kv28)
t.test(Kv25,Kv26)
t.test(Kv25,Kv28)
t.test(Kv26,Kv28)

# Am27.29  ttest
t.test(Kv27,Kv29)

# Aw23.24.31  ttest
t.test(Kv23,Kv24)
t.test(Kv23,Kv31)
t.test(Kv24,Kv31)

# BSh14.21.32 ttest
t.test(Kv14,Kv21)
t.test(Kv14,Kv32)
t.test(Kv21,Kv32)

# BSk6.4.16 ttest not possible?
t.test(Kv4,Kv6)
t.test(Kv4,Kv16)
t.test(Kv6,Kv16)
# BWh8.22 ttest not possible
t.test(Kv8,Kv22)
# Cfb2.3.11.30 ttest
t.test(Kv2,Kv3)
t.test(Kv2,Kv11)
t.test(Kv2,Kv30)
t.test(Kv3,Kv11)
t.test(Kv3,Kv30)
t.test(Kv11,Kv30)
# Cwa9.13.15 ttest
t.test(Combined[9],Combined[13])
t.test(Combined[9],Combined[15])
t.test(Combined[13],Combined[15])
# ET7.20 ttest 1 not possible
t.test(Kv1,Kv7)
t.test(Kv1,Kv20)
t.test(Kv7,Kv20)
#none

#out of 27, 5 correlate