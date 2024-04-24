data(mtcars)
mtcars
head(mtcars)
summary(mtcars)

names(mtcars)
#(a)attributes of the dataset are "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear" "carb"
colnames(mtcars)

dim(mtcars)
data(mtcars)


str(mtcars)
summary(mtcars)

# Individual summary statistics for each variable
summary(mtcars$mpg)
summary(mtcars$cyl)
summary(mtcars$disp)
summary(mtcars$hp)
summary(mtcars$drat)
summary(mtcars$wt)
summary(mtcars$qsec)
summary(mtcars$vs)
summary(mtcars$am)
summary(mtcars$gear)
summary(mtcars$carb)

sapply(mtcars, function(x) sum(is.na(x)))

hist(mtcars$mpg, main = "Distribution of MPG in the mtcars dataset",
     xlab = "Miles per Gallon (MPG)", ylab = "Frequency")

par(mfrow=c(3, 3)) # set up a 3 x 3 grid of plots
for (i in 2:ncol(mtcars)) {
  if (is.numeric(mtcars[, i])) {
    plot(density(mtcars[, i]), main = colnames(mtcars)[i], ylab = "Density")
  }
}

pairs(mtcars[, c(1, 3, 4, 5, 6)], main = "Scatter Plot Matrix of Numerical Variables in the mtcars Dataset")

#(b)dimension of data frame = 32, 11
max = max(mtcars$mpg)
min=min(mtcars$mpg)
#range
range(mtcars$mpg)
range=max-min
print(range)
#range = max - min
#print(range)

colnames(mtcars) #view variables
#(d)summary statictics for variables
summary(mtcars$mpg)
summary(mtcars$cyl)
summary(mtcars$disp)
summary(mtcars$hp)
summary(mtcars$drat)
summary(mtcars$wt)
summary(mtcars$qsec)
summary(mtcars$vs)
summary(mtcars$am)
summary(mtcars$gear)
summary(mtcars$carb)

#Missing values
is.name(mtcars)
sum(is.na(mtcars)) 
#(e)no of NA values= 0
# Calculating variance
variance = var(mtcars$mpg)
print(variance)
# Calculating Standard deviation
std = sd(mtcars$mpg)
print(std)
quartiles = quantile(mtcars$mpg)
print(quartiles)
# Calculating IQR
IQR = IQR(mtcars$mpg)
print(IQR)



#fit multiple linear regression model
model <- lm(mpg ~ disp + hp, data=mtcars)

#view model summary
summary(model)
#fit multiple linear regression model
model <- glm(mpg ~ disp + hp, data=mtcars)

#view model summary
summary(model)
#fit logistic regression model
model <- glm(am ~ disp + hp, data=mtcars, family=binomial)

#view model summary
summary(model)
#fit Poisson regression model
model <- glm(am ~ disp + hp, data=mtcars, family=poisson)

#view model summary
summary(model)


#Visualization 
#create histogram of values for mpg
hist(mtcars$mpg,
     col='steelblue',
     main='Histogram',
     xlab='mpg',
     ylab='Frequency')
hist(mtcars$hp,
     col='green',
     main='Histogram',
     xlab='hp',
     ylab='Frequency')
#create boxplot of values for mpg
boxplot(mtcars$mpg,
        main='Distribution of mpg values',
        ylab='mpg',
        col='steelblue',
        border='black')
boxplot(mtcars$hp,
        main='Distribution of hp values',
        ylab='hp',
        col='yellow',
        border='black')

#create scatterplot of mpg vs. wt
plot(mtcars$mpg, mtcars$wt,
     col='steelblue',
     main='Scatterplot',
     xlab='mpg',
     ylab='wt')
##Plotting
plot(mtcars$wt, mtcars$mpg, main="Scatterplot", xlab="Car Weight ", ylab="Miles Per Gallon ", pch=19)
##
install.packages("ggplot2")
library(ggplot2)

p <- ggplot(mtcars, aes(wt, mpg))
p + geom_point(size=2) + xlab("Car Weight") + ylab("Miles Per Gallon")

p <- ggplot(mtcars, aes(wt, mpg))
geom_point(aes(colour=factor(cyl), size = qsec)) + xlab("Car Weight") + ylab("Miles Per Gallon")
