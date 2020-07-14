
getwd()

cstats <- read.csv("data/covid-19-20200714.csv")

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
c19stats <- read.csv("data/covid-19-20200714.csv")

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

sum(posTestRate$posDayTest)
                          

# extract most recent day
mnResults <- c19stats[c19stats$state == 'MN',]

# build data frame with select columns
mnTestRate <- data.frame(
  date = mnResults$date, 
  state = mnResults$state, 
  posDayTest = mnResults$positiveIncrease, 
  totDayTest = mnResults$totalTestResultsIncrease)

# Add percentage column 
mnTestRate$pctPosRate <- round((mnResults$positiveIncrease / mnResults$totalTestResultsIncrease) * 100, digits = 2)


# sort results
mnTestRateOrder <- mnTestRate[order(-mnTestRate$date),]

mnTestRateOrder <- mnTestRate[order(-mnTestRate$pctPosRate),]

# print results
print(mnTestRateOrder, row.names=FALSE)


# print sorted results - descending positive rate
print(posTestRate[order(-posTestRate$pctPosRate),], row.names=FALSE)

