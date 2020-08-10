## unzip("C:/Users/hp/Desktop/R/R_US_Pollution_Project/rprog_data_specdata.zip", files = NULL, list = FALSE, overwrite = TRUE, junkpaths = FALSE, exdir = ".", unzip = "internal", setTimes = FALSE)
source('C:/Users/hp/Desktop/R/R_US_Pollution_Project/pollutantmean.R')
source('C:/Users/hp/Desktop/R/R_US_Pollution_Project/complete.R')
source('C:/Users/hp/Desktop/R/R_US_Pollution_Project/corr.R')
directory<-"specdata"
id<-1:100
threshold<-400
pollutant<-"sulfate"
pollutant_mean<-pollutantmean(directory,pollutant,id)
complete1<-complete(directory,id)
correlation1<-corr(directory,threshold)
rm(list= ls()[!(ls() %in% c('pollutant_mean','complete1','correlation1'))])
