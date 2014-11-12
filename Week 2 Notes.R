library(datasets)
library(lattice)
xyplot(Ozone ~ Wind , data = airquality)

## Convert 'Month' to a factor variable


airquality <- transform(airquality, Month = factor(Month)) 
xyplot(Ozone ~ Wind | Month, data = airquality, layout = c(5, 1))

set.seed(10)
x <- rnorm(100)
f <- rep(0:1, each = 50)
y <- x + f - f * x+ rnorm(100, sd = 0.5)
f <- factor(f, labels = c("Group 1", "Group 2"))
xyplot(y ~ x | f, layout = c(2, 1))  ## Plot with 2 panels

library(lattice)
env <- readRDS("maacs_env.rds")
env <- transform(env, MxNum = factor(MxNum))
xyplot(log2(airmus) ~ VisitNum | MxNum, data = env, strip = FALSE, 
       pch = 20, xlab = "Visit Number", ylab = 
           expression(Log[2] * " Airborne Mouse Allergen"),
       main = "Mouse Allergen and Asthma Cohort Study (Baltimore City)")

qplot(displ,hwy,data=mpg)
qplot(displ,hwy,data=mpg, color=drv)
qplot(displ,hwy,data=mpg, geom=c("point","smooth"))
qplot(hwy,data=mpg,fill=drv)
qplot(displ, hwy, data = mpg, facets = . ~ drv)
qplot(hwy, data = mpg, facets = drv ~ ., binwidth = 2)
qplot(displ, hwy, data = mpg, facets = drv ~ .)
qplot(hwy, data = mpg, facets = . ~ drv, binwidth = 2)


testdat <- data.frame(x = 1:100, y = rnorm(100))
testdat[50,2] <- 100 ## Outlier!!
plot(testdat$x, testdat$y, type = "l", ylim = c(-3,3))

g <- ggplot(testdat, aes(x = x, y = y))
g + geom_line()
