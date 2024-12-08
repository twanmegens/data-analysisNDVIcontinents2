#testtest

#trying to make the residuals work
#making it a tibble
dfSAT = tibble(dfSAT)
#making the fit

fit_3        = lm(Year ~ dfSAT[,4], data = dfSAT)
summary(fit_3)
show(fit_3)
#plotting the fit
ggplot(data=dfSAT, aes(x=Year,y=dfSAT[,1]))+
  geom_point()+
  geom_abline(aes(color = "Regression",
                  intercept = fit_3$coefficients[1],
                  slope = fit_3$coefficients[2]))

#mutating the data to include fit residuals
dfSAT=mutate(dfSAT,residuals=fit_3$residuals)
show(dfSAT)

#plotting of residuals
ggplot(data=dfSAT)+
  geom_point(aes(x=Year, y=residuals))

###version 2


#mutating the data to include fit residuals
Combined=mutate(Combined,residuals=fit_22$residuals)
#show(Combined)

#plotting of residuals
ggplot(data=Combined)+
  geom_point(aes(x=Year, y=residuals))



#chisquare test
result <- chisq.test(Combined[,2])
print(result)
show(result)
h=hist(Combined[,3], breaks=4)
hist(Combined[,3], breaks=8)
show(h)
show(h$density[1])
