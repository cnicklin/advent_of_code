# Advent of Code - Day 1
# https://adventofcode.com/2021/day/1

setwd("C:/Users/cnicklin/Documents/AdventOfCode")
# readings <- read.csv("AOC1.csv")
# for practice we'll use a smaller array
readings <- data.frame(value=c(176,179,180,195,197,203,211,212,200,225))
mydata <- data.frame(value=readings[1,1],result=NA)

vari <- 1
vari2 <- 2

loopy <- function(vari,
                  vari2) {
  num <- readings[vari,1]
  num2 <- readings[vari2,1]
  differ <- num2 - num
  mydata2 <- data.frame(value=readings[vari2,1],result=differ)
  mydata <- rbind(mydata,mydata2)
  vari <- vari+1
  vari2 <- vari2+1
  return(mydata)
}



for (n in readings) {print(n)}

vari <- 2
print(readings[vari,])
print(readings[vari+1,])

vari <- vari+1

num2 <- readings[2,1]+5

loopy

