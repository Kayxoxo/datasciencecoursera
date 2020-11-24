###3 Reading Data into R
NEI<-readRDS("summarySCC_PM25.rds")
SCC<-readRDS("Source_Classification_Code.rds")

##### Extracting Baltimore Data
Baltimore<-subset(NEI,fips== "24510")
BaltYearAndType <- aggregate(Emissions ~ year + type, Baltimore, sum)
png("Question 3(three).png", width=480, height=480)

library(ggplot2)
ggplot(data = BaltYearAndType, aes(x = factor(year), y = Emissions, fill = type)) +
  geom_bar(stat = "identity") + facet_grid(. ~ type) + xlab("Year") +ylab(expression('PM'[2.5]*'Emissions'))
+ ggtitle("Baltimore PM2.5 Emissions Based on Source Type")