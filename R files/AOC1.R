# Advent of Code - Day 1
# https://adventofcode.com/2021/day/1

setwd("C:/Users/cnicklin/Documents/AdventOfCode")
readings <- read.csv("AOC1.csv")

# for practice we'll use a smaller array
# readings <- data.frame(value=c(176,179,180,195,197,203,211,212,200,225))

# create a table with the values from readings and a new column that calculates what the increase or decrease is
# It sets the first row with NA in result because there can't be a change yet
# occurs to me now I could have just added this column to readings in the first place
mydata <- data.frame(value=readings[1,1],result=NA)

# loop populates mydata with the rest of the values from readings and the inc/dec starting with row2
for (n in 2:nrow(readings)) {
  y <- n-1
  differ <- readings[n,1] - readings[y,1]
  tempdata <- data.frame(value=readings[n,1],result=differ)
  mydata <- rbind(mydata,tempdata)
}

# count the increases
length(which(mydata$result > 0))

# Part A ANSWERED!!!!

# reset variables
rm(n)
rm(y)
rm(tempdata)
rm(differ)
rm(mydata)

# start over making the added column a rolling sum of 3 values
mydata <- data.frame(value=c(readings[1,1], readings[2,1]),rolling=c(NA,NA))
for (n in 3:nrow(readings)) {
  y <- n-1
  z <- n-2
  rolla <- readings[n,1] + readings[y,1] + readings[z,1]
  tempdata <- data.frame(value=readings[n,1],rolling=rolla)
  mydata <- rbind(mydata,tempdata)
}


# reset variables
rm(n)
rm(y)
rm(z)
rm(tempdata)
rm(rolla)

# create another dataset that sets the first 3 rows
mydata2 <- mydata[1:3,]
mydata2$result <- c(NA,NA,NA)

# now add the increase/decrease column
for (n in 4:nrow(mydata)) {
  y <- n-1
  z <- n-2
  differ <- mydata[n,2] - mydata[y,2]
  tempdata <- data.frame(value=mydata[n,1],rolling=mydata[n,2],result=differ)
  mydata2 <- rbind(mydata2,tempdata)
}

# count the increases
length(which(mydata2$result > 0))
