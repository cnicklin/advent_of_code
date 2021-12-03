# Advent of Code - Day 1
# https://adventofcode.com/2021/day/1

setwd("C:/Users/cnicklin/Documents/AdventOfCode")
# readings <- read.csv("AOC1.csv")
# for practice we'll use a smaller array
readings <- data.frame(value=c(176,179,180,195,197,203,211,212,200,225))
mydata <- data.frame(value=readings[1,1],result=NA)
numb <- nrow(readings)

for (n in 2:numb) {
  y <- n-1
  differ <- readings[n,1] - readings[y,1]
  tempdata <- data.frame(value=readings[n,1],result=differ)
  mydata <- rbind(mydata,tempdata)
}

sum(mydata$result > 0)
