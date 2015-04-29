## Question 1
data <- read.csv("C:\\Users\\snyomba\\AppData\\Local\\Temp\\Rtmp2HIanN\\dataec518c649")
names(data)
splitNames = strsplit(names(data), "wgtp")
splitNames[[123]]

#Question 2
#myurl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv" 
myurl1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"

z <- tempfile()
download.file(myurl1,z,mode="wb")
rankedCountries <- read.csv(file = z, header = FALSE, skip = 5, stringsAsFactors =FALSE)
y <- subset(rankedCountries, select = -c(3,6:10))
cleanData <- y[(y$V2 != "" & y$V1 != ""),]
cleanData$V5 <- gsub(",", "", cleanData$V5)
cleanData$V5 <- as.numeric(cleanData$V5)
str(cleanData$V5)
summary(cleanData)
str(cleanData)
countryNames <- cleanData$V4

#Question 3
grep("^United",countryNames)

#Question 4
myurl2 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
edu <- tempfile()
download.file(myurl2,edu,mode="wb")
education <- read.csv(file = edu, header = TRUE)
View(education)
str(education)
View(education[(grep("^Fiscal year end: June 30;", education$Special.Notes)), ])

#Question 5
library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn)
summary(sampleTimes)
length(grep("^2012", sampleTimes))
View(sampleTimes)

