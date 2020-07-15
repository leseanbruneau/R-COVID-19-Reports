
c19Data <- read.csv("data/covid-19-20200715.csv")

stateLastDayPosRate(c19Data)

allStatesTestDayTotal(c19Data, '20200714')
allStatesTestDayTotal(c19Data, '20200713')
allStatesTestDayTotal(c19Data, '20200712')
allStatesTestDayTotal(c19Data, '20200711')
allStatesTestDayTotal(c19Data, '20200710')

allStatesTestDayTotal(c19Data, '20200709')
allStatesTestDayTotal(c19Data, '20200708')
allStatesTestDayTotal(c19Data, '20200707')
allStatesTestDayTotal(c19Data, '20200706')
allStatesTestDayTotal(c19Data, '20200705')
allStatesTestDayTotal(c19Data, '20200704')
allStatesTestDayTotal(c19Data, '20200703')
allStatesTestDayTotal(c19Data, '20200702')
allStatesTestDayTotal(c19Data, '20200701')


print("*****************************")
print(" State - Minnesota")
print("*****************************")

print(statePosRate(c19Data, 'MN'), row.names=FALSE)

print("\n")
print("*****************************")
print(" State - Wisconsin")
print("*****************************")

print(statePosRate(c19Data, 'WI'), row.names=FALSE)

print("\n")
print("*****************************")
print(" State - New York")
print("*****************************")

print(statePosRate(c19Data, 'NY'), row.names=FALSE)

print("\n")
print("*****************************")
print(" State - California")
print("*****************************")

print(statePosRate(c19Data, 'CA'), row.names=FALSE)

print("\n")
print("*****************************")
print(" State - Florida")
print("*****************************")

print(statePosRate(c19Data, 'FL'), row.names=FALSE)

print("\n")
print("*****************************")
print(" State - Texas")
print("*****************************")

print(statePosRate(c19Data, 'TX'), row.names=FALSE)


print("\n")
print("*****************************")
print(" State - Arizona")
print("*****************************")

print(statePosRate(c19Data, 'AZ'), row.names=FALSE)

print("\n")
print("*****************************")
print(" State - Louisiana")
print("*****************************")

print(statePosRate(c19Data, 'LA'), row.names=FALSE)



