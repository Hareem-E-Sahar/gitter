library(lattice)
both<-read.csv("Gitter_Random.csv",header=TRUE)
pdf("PDFFinal.pdf",height = 6, width=6)
densityplot(~resolution_time,data=both,groups = configuration,
            plot.points = FALSE, ref = TRUE, 
            auto.key=list(space="top", columns=2),xlab = "Resolution Time in Hours",ylim=c(-0.00001,0.00065), region=TRUE)
dev.off()
                                                                                                                  
#, lty=c(2,1)
library(lattice)
library(latticeExtra)

gitter<-read.csv("ResolutionTime_GitterIssues.csv",header=TRUE)
random<-read.csv("ResolutionTime-RandomIssues.csv",header=TRUE)

gitter_res_time<-gitter$resolution_time[1:8920]
random_res_time<-random$resolution_time[1:8920]

df <- data.frame(gitter_res_time,random_res_time)
Gitter<-gitter_res_time
Random<-random$res_time

pdf("CDFFull.pdf",height = 5, width=6)
ecdfplot(~  Gitter + Random, data=df , auto.key =list(space="top", columns=2,text=c("Gitter-issues","Random-issues")),
        xlab="Resolution Time in Hours")  #//CDFFULL.pdf
dev.off()

pdf("CDF.pdf",height = 5, width=6)
ecdfplot(~  Gitter + Random, data=df , auto.key =list(space="top", columns=2,text=c("Gitter-issues","Random-issues")),
         xlab="Resolution Time in Hours",ylim=c(0.95,1.001)) #//CDF
dev.off()

