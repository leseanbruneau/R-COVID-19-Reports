
statePosRate <- function(c19Data, evalState) {
  # extract most recent day
  stateResults <- c19Data[c19Data$state == evalState,]
  
  # build data frame with select columns
  stateTestRate <- data.frame(
    date = stateResults$date, 
    state = stateResults$state, 
    posDayTest = stateResults$positiveIncrease, 
    totDayTest = stateResults$totalTestResultsIncrease,
    pctPosRate = round((stateResults$positiveIncrease / stateResults$totalTestResultsIncrease) * 100, digits = 2))
  
  # Add percentage column 
  #mnTestRate$pctPosRate <- round((mnResults$positiveIncrease / mnResults$totalTestResultsIncrease) * 100, digits = 2)
  
  
  # sort results
  #mnTestRateOrder <- stateTestRate[order(-mnTestRate$date),]
  
  statePosTestRateOrder <- stateTestRate[order(-stateTestRate$pctPosRate),]
  
  return(statePosTestRateOrder)
  
}

stateLastDayPosRate <- function(c19Data) {
  maxDayResults <- c19Data[c19Data$date == max(c19Data$date),]
  
  posTestRate <- data.frame(
    date = maxDayResults$date, 
    state = maxDayResults$state, 
    posDayTest = maxDayResults$positiveIncrease, 
    totDayTest = maxDayResults$totalTestResultsIncrease,
    pctPosRate = round((maxDayResults$positiveIncrease / maxDayResults$totalTestResultsIncrease) * 100, digits = 2))
  
  # sort results
  posTestRateOrder <- posTestRate[order(-posTestRate$pctPosRate),]
  
  # print results
  print(posTestRateOrder, row.names=FALSE)
  
}


allStatesTestDayTotal <- function(c19Data, testDate) {
  testDayData <- c19Data[c19Data$date == testDate,]
  
  allStatesTestDayTotal <- data.frame(matrix(ncol = 4))
  names(allStatesTestDayTotal) <- c("date", "posDayTest", "totDayTest", "pctPosRate")
  allStatesTestDayTotal[1,1] <- testDate
  allStatesTestDayTotal[1,2] <- sum(testDayData$positiveIncrease)
  allStatesTestDayTotal[1,3] <- sum(testDayData$totalTestResultsIncrease)
  allStatesTestDayTotal[1,4] <- round(allStatesTestDayTotal[2] / allStatesTestDayTotal[3] * 100, digits = 2)
  
  # print results
  #print(allStatesTestDayTotal, row.names=FALSE)
  
  return (allStatesTestDayTotal)
  
} 


allTestDays <- function(c19Data) {
  days <- distinct(c19Data, date)
  allTestDays <- data.frame(matrix(ncol = 4, nrow = 0))
  names(allTestDays) <- c("date", "posDayTest", "totDayTest", "pctPosRate")
  
  #allTestDays <- allStatesTestDayTotal(c19Data, '20200713')
  
  for (day in days$date) {
    allTestDays <- rbind(allTestDays, allStatesTestDayTotal(c19Data,day))
  }
  
  arrange(allTestDays, desc(date))
  
  # print results
  print(allTestDays, row.names=FALSE)
  
}


