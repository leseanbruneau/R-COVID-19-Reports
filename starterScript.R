
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


getwd()

cstats <- read.csv("data/daily.csv")

head(cstats)

str(cstats)

max(cstats$date)

daycstats <- cstats[cstats$date == max(cstats$date),]

#daycstats <- cstats[cstats$date == '20200706',]


summary(daycstats)


posTestRate <- data.frame(date = daycstats$date, 
                          state = daycstats$state,
                          posDayTest = daycstats$positiveIncrease,
                          totDayTest = daycstats$totalTestResultsIncrease)

posTestRate$posRate <- round((posTestRate$posDayTest / posTestRate$totDayTest) * 100, digits = 2)

head(posTestRate)

posTestRate



# import daily csv file
c19stats <- read.csv("data/daily-20200707.csv")

# extract most recent day
dayResults <- c19stats[c19stats$date == max(c19stats$date),]

# build data frame with select columns
posTestRate <- data.frame(
  date = dayResults$date, 
  state = dayResults$state, 
  posDayTest = dayResults$positiveIncrease, 
  totDayTest = dayResults$totalTestResultsIncrease,
  pctPosRate = round((dayResults$positiveIncrease / dayResults$totalTestResultsIncrease) * 100, digits = 2))

# sort results
posTestRateOrder <- posTestRate[order(-posTestRate$pctPosRate),]

# print results
print(posTestRateOrder, row.names=FALSE)




# import daily csv file
c19stats <- read.csv("data/daily-20200707.csv")

# extract most recent day
dayResults <- c19stats[c19stats$date == max(c19stats$date),]

# build data frame with select columns
posTestRate <- data.frame(
  date = dayResults$date, 
  state = dayResults$state, 
  posDayTest = dayResults$positiveIncrease, 
  totDayTest = dayResults$totalTestResultsIncrease)

# Add percentage column 
posTestRate$pctPosRate <- round((dayResults$positiveIncrease / dayResults$totalTestResultsIncrease) * 100, digits = 2)

# sort results
posTestRateOrder <- posTestRate[order(-posTestRate$pctPosRate),]

# print results
print(posTestRateOrder, row.names=FALSE)


# print sorted results - descending positive rate
print(posTestRate[order(-posTestRate$pctPosRate),], row.names=FALSE)

                          
