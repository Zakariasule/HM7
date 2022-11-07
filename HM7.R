load("C:/Users/Zakaria Sule/Desktop/CUNY_CCNY/Courses/Econometrics/Household_Pulse_data.RData")
attach(Household_Pulse_data)
summary(Household_Pulse_data)
table(EGENID_BIRTH, EEDUC)

so i am looking at how the dependent variable gender from birth correlate with education with the logit model.
model_logit1 <- glm(EEDUC ~ EGENID_BIRTH, family = binomial, data = Household_Pulse_data)
summary(model_logit1)
table(Household_Pulse_data$EGENID_BIRTH, Household_Pulse_data$EEDUC)
exp(0.17014)
Running the summary of model_logit1 i took the range values of high school and advance degree (the coefficient of gender) and run an expo with gender (female) which is equal to = 1.18547 

new_data_to_be_predicted <- data.frame(EGENID_BIRTH="female", EEDUC=factor("some hs & adv deg"))
predict(model_logit1, new_data_to_be_predicted)
After running the predict, the odd ratio is 5.190345

plot(EEDUC~EGENID_BIRTH)
line(EEDUC~EGENID_BIRTH)
install.packages("popbio")
library(popbio)
logi.hist.plot(EEDUC, EGENID_BIRTH)

from the codes above i made a plot for my dependent and independent variable and also installed popbio and a made a hist plot for the variables. The his gave a nice graphical representation of gender, male and female and how they correlate with the educational level. Im just hoping to impress lol.