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
