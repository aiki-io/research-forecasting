autoplot(melsyd[, "Economy.Class"]) +
  xlab("Year") + 
  ylab("Thousands")

autoplot(a10) +
  ggtitle("Antiadiabetc drug sales") +
  ylab("$ million") +
  xlab("Year")

ggseasonplot(a10, year.labels = TRUE, year.labels.left = TRUE) +
  ylab("$ million") + 
  ggtitle("Seasonal plot: antidiabetic drug sales")

ggseasonplot(a10, polar=TRUE) +
  ylab("$ million") +
  ggtitle("Polsr seasonal olit: antidiabetic drug sales")

ggsubseriesplot(a10)

qplot(Temperature, Demand, data = as.data.frame(elecdemand))

autoplot(visnights[,1:5], facets = TRUE)

visnights[, 1:5] %>% as.data.frame() %>% GGally::ggpairs()

beer2 <- window(ausbeer, start=1992)
gglagplot(beer2)

aelec <- window(elec, start=1980)
autoplot(aelec)
ggAcf(aelec, lag=48)


set.seed(30)
y <- ts(rnorm(50))
autoplot(y)
ggAcf(y)

?gold
?woolyrnq
?gas
autoplot(gold)
autoplot(woolyrnq)
autoplot(gas)

tute <- read.csv("tute1.csv", header = TRUE)
mytimeseries <- ts(tute[,-1], start = 1981, frequency = 4)
autoplot(mytimeseries, facets=TRUE)

retaildata <- readxl::read_excel("retail.xlsx", skip=1)
myts <- ts(retaildata[,"A3349873A"], start=c(1982,4), frequency = 12)
autoplot(myts)
ggseasonplot(myts, polar = TRUE)
ggAcf(myts)
