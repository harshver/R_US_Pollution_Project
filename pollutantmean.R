pollutantmean<-function(directory,pollutant,id){
     my_wd<-paste("C:/Users/hp/Desktop/R/R_US_Pollution_Project/",directory,sep="")
     setwd(my_wd)
     dataset<-c()
     
     for(i in id){
          data<-read.csv(paste(formatC(i, width=3, flag="0"),".csv",sep=""))
          data1<-data[pollutant]
          data2<-data1[!is.na(data1)]
          dataset<-c(dataset,data2)
          rm(data,data1,data2)
     }
     m<-mean(dataset)
     rm(dataset)
     m
}