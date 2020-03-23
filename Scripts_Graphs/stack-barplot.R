library(ggplot2)

data1<-read.csv("data-for-barplot-for-R.csv")

colors<-c("#DD8888", "#FF9999","#FFCC99")
# Stacked

pdf("percentIssuesForRQ1.pdf",width=6,height=6)
ggplot(data=data1, aes(fill=referencedby, y=percentage, x=room)) + 
  geom_bar(colour="black",  position="stack", width=.8 , stat="identity") + 
  xlab("Gitter Chat Rooms") + ylab("Percentage of Issues") + 
  theme(axis.text.x = element_text(angle = 60, hjust = 1), axis.text=element_text(size=16),  
  axis.title = element_text(size=16), legend.title  = element_blank(), legend.position = "top")+
  scale_fill_manual(values=c("#FFCCCC", "bisque3", "bisque2"))
dev.off()

# guides(fill=FALSE) to stop making legend
