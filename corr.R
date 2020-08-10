corr <-function(directory,threshold){
     my_wd<-paste("C:/Users/hp/Desktop/R/R_US_Pollution_Project/",directory,sep="")
     setwd(my_wd)
     csvs <- vector(mode="character", length=332)
     for(i in 1:332){
          csvs[i]<-paste(formatC(i, width=3, flag="0"),".csv",sep="")}
     
     rows <- vector(mode="integer", length=332)
     for(i in 1:332){
          data<-read.csv(paste(formatC(i, width=3, flag="0"),".csv",sep=""))
          data1<-data[complete.cases(data), ]
          rows[i]<-nrow(data1)
          rm(data,data1)}
     
     truth<-rows>threshold
     cr <- vector(mode="integer", length=332)
     
     for(i in 1:332){
          if(truth[i]==TRUE){
               data<-read.csv(paste(formatC(i, width=3, flag="0"),".csv",sep=""))
               data1<-data[complete.cases(data), ]
               cr[i]<-cor(data1$sulfate,data1$nitrate)
               rm(data,data1)}
             
          else{ cr[i]<-0 }
        
     }
     cr<-cr[cr!=0]
     cr
 
}