complete<-function(directory,id){
     my_wd<-paste("C:/Users/hp/Desktop/R/R_US_Pollution_Project/",directory,sep="")
     setwd(my_wd)
     comp<-data.frame(id,nobs=vector(mode="integer", length=length(id)))
     j=1;
     for(i in id){
          data<-read.csv(paste(formatC(i, width=3, flag="0"),".csv",sep=""))
          data1<-data[complete.cases(data), ]
          comp[j,"nobs"]<-nrow(data1)
          j<-j+1
          rm(data,data1)
     }
     rm(j)
     comp
     
}