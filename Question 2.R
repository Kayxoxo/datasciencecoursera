###3 Reading Data into R
NEI<-readRDS("summarySCC_PM25.rds")
SCC<-readRDS("Source_Classification_Code.rds")

##### Extracting Baltimore Data
Baltimore<-subset(NEI,fips== "24510")

####Have total emissions from PM2.5 decreased in the Baltimore City,Maryland
#Maryland(fips=="24510") from 1999 to 2008

Marylandem<-aggregate(Emissions~year,NEI,sum)
##### Plotting the graph
png('Plot 2(two).png')
cols<-c("red","blue","green","pink")

barplot(height =Marylandem$Emissions,names.arg = Marylandem$year,xlab = "Years",
        ylab =  expression('Total PM'[2.5]*' emission'),main =
          expression('Total PM'[2.5]*'Emissions Per Year'  ),col = cols)
# Over time as observed in the bar charts, the total PM2.5 emissions have decreased