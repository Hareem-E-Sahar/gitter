library(ggplot2)

gitter_random<-read.csv("Gitter_Random.csv",header=TRUE)

pdf("ResolutionTimeBoxplot-logscale.pdf",width=8,height=6)
ggplot(gitter_random, aes(x=gitter_random$name, y=(gitter_random$resolution_time), fill=(gitter_random$configuration))) +
  geom_boxplot()  +
  theme(legend.position = "top",legend.title  = element_blank()) +
  theme(axis.text.x = element_text(angle = 60,hjust=1), axis.text=element_text(size=14), axis.title =element_text(size=16) )+
  xlab("Gitter Chat Rooms") +
  ylab("Resolution Time in Hours (log scale)") + ylim(0, max(gitter_random$resolution_time)) + scale_y_log10()+
  scale_fill_manual(values=c( "bisque2", "cyan3"))
  #bisque3 if want darker
dev.off()

'boxplot(gitter_random$resolution_time~gitter_random$name, data=gitter_random 
        , beside=T, main="all the boxes", las=2)
points(3,12500,col=4,pch=13)
text (3.8,12500,"Oops",pos = 4)

