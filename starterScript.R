
getwd()

cstats <- read.csv("data/covid-19-20200630.csv")

head(cstats)

str(cstats)

max(cstats$date)

daycstats <- cstats[cstats$date == max(cstats$date),]


summary(daycstats)


posTestRate <- data.frame(date = daycstats$date, 
                          state = daycstats$state,
                          posDayTest = daycstats$positiveIncrease,
                          totDayTest = daycstats$totalTestResultsIncrease)

posTestRate$posRate <- round((posTestRate$posDayTest / posTestRate$totDayTest) * 100, digits = 2)

head(posTestRate)

posTestRate

                          
                          