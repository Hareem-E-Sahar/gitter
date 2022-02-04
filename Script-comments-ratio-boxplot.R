library(ggplot2)
data<-read.csv("./2-CombineCommentsForBoxplot-v3.csv",header=TRUE)
setwd("./")
pdf("2-comments-ratio-boxplot-week-v3.pdf",width=8,height=7)
ggplot(data, aes(x=data$roomname, y=(data$ratio))) +
  geom_boxplot(colour="black", fill="bisque2")  + theme_light()+ 
  theme(axis.text.x = element_text(angle = 60,hjust=1), axis.text=element_text(size=13), axis.title =element_text(size=16) )+
  theme(legend.position = "top",legend.title  = element_blank(),axis.text.x = element_text(angle = 60,hjust=1), axis.text=element_text(size=14), axis.title =element_text(size=16), 
        panel.border = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  xlab("Gitter Chat Rooms") +
  ylab("Comments Change Ratio") + geom_hline(yintercept=1.0,color='red')  #+ scale_y_log10() #(log scale) + scale_y_log10()
dev.off()


