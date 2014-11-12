library(nlme)
library(lattice)
xyplot(weight ~ Time | Diet, BodyWeight)

library(lattice)
library(datasets)
data(airquality)
p <- xyplot(Ozone ~ Wind | factor(Month), data = airquality)

library(datasets)
data(airquality)
qplot(Wind, Ozone, data = airquality, facets = . ~ factor(Month))

library(ggplot2)
g <- ggplot(movies, aes(votes, rating))
print(g)

