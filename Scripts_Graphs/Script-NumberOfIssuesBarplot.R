#barplot
library(ggplot2)

data<-read.csv("OUTPUT.csv")
df<-data.frame(data$ShortRoomName,data$IssuesFound)

pdf("Number-of-issues-logscale.pdf",width=6,height=6)
ggplot(data=df, aes(x=data$ShortRoomName, y=(data$Real.Issues))) + 
       geom_bar(colour="black", fill="bisque2", width=.8, stat="identity") + 
       guides(fill=FALSE) +
       xlab("Gitter Chat Rooms") + ylab("Number of Issues (log scale)") +  theme_bw()+
       theme(axis.text.x = element_text(angle = 60, hjust = 1),
       axis.title = element_text(size=16), axis.text=element_text(size=15))+
       scale_y_log10()
    
dev.off()
