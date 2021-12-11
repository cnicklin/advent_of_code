# Advent of Code - Day 2
# https://adventofcode.com/2021/day/2
library(stringr)
library(stringi)

setwd("C:/Users/cnicklin/Documents/AdventOfCode")
readings <- read.csv("AOC2.csv")

# Let's parse the commands and separate into 2 columns
# first I need the index of the space
mydata <- 

for (n in 1:nrow(readings)) {
  indiframe <- data.frame(str_locate(readings[n,1], " "))
  x <- indiframe[1,1]
  directi <- substr(readings[n,1],1,(x-1))
  tempdata <- data.frame(command=readings[n,1],direction=directi)
  mydata <- rbind(mydata,tempdata)
}






# I'm testing things below - I'll make this a loop later
firstc <- "forward 2"
indiframe <- data.frame(str_locate(firstc, " "))
x <- indiframe[1,1]
substr(firstc,1,(x-1))
