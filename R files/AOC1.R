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

# add a column that creates a rolling sum of 3 values
for (n in 3:10) {
  y <- n-1
  z <- n-2
  rolla <- mydata[n,1] + mydata[y,1] + mydata[z,1]
  tempdata <- data.frame(valuea=mydata[n,1],rolling=rolla)
  mydata <- rbind(mydata,tempdata)
}
