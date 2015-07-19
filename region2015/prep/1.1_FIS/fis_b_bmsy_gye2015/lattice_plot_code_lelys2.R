#### Plotting code to look at multiple time-series of model results for multiple stocks in a lattice plot

library(ggplot2)
library(grid)
source("http://nceas.ucsb.edu/~frazier/myTheme.txt") # use this line of code to use Melanie's theme for pretty plots

# your input data will have only 4 columns: the stock identifier 'stock' (for example, the species name), the year 'year', 
# a 'variable' column that says if the value is B/Bmsy from the CMSY model, B/Bmsy from the Costello et al model, the catch data, or any other variable you want to add (e.g. ocean climate index)
# a 'value' column for the corresponding values

#Read input data and output data from the CMSY model
indata2<-read.csv("my_bbmsy_relaxed_Anxo_04172015.csv", stringsAsFactors=FALSE)
indata1<-read.csv("my_bbmsy_uniform2_Anxo_04182015.csv",stringsAsFactor=FALSE)
#library(Stack)

newdata<-cbind(indata1,indata2[,2])
colnames(newdata)[4]="b_bmsy2"
stock_id<-rep(newdata[,1],times=2)
year<-rep(newdata[,3],times=2)
pila<-stack(newdata[,c(2,4)])

newdata1<-cbind(stock_id,pila,year)
attach(newdata1)

#subset_data <- yourdata # subset your data if you only want to plot a part of it

ggplot(newdata1, aes(x=year, y=values, group=ind, color=ind)) +
  geom_point() +
  geom_line() +
  facet_wrap(~ stock_id, ncol = 4, scales="free") + #change the number of columns if you wish
  theme_bw()
#ggsave('C:\\Users\\Melanie\\Desktop\\FIS2014 cmsy\\compare.png') # example directory for file saving
