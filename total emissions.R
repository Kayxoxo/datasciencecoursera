###3 Reading Data into R
NEI<-readRDS("summarySCC_PM25.rds")
SCC<-readRDS("Source_Classification_Code.rds")

#Have total emissions from PM2.5 decreased in the United States from 1999 to 2008?
TotalEmissionsPerYear <- aggregate(Emissions ~ year, NEI, sum)

# Plotting the graph
png('plot one1.png')
barplot(height = TotalEmissionsPerYear$Emissions,names.arg =TotalEmissionsPerYear$year,xlab = "Years",
        ylab = expression('total PM'[2.5]*' emission'),main =
          expression('Total PM'[2.5]*'Emissions Per Year'  ) )

          
      