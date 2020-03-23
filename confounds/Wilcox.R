### Create groups using GroupData.R
library(orddom)
gitdf<-read.csv("~/gitGroup15.csv")
randf<-read.csv("~/ranGroup15.csv")
orddom(randf$restime,gitdf$restime, paired=FALSE)

#p > 0.05 weak evidence against null
#Null = There is no difference between resolution time of gitter and random issues.
#We did not find sufficient evidence that mentioning issues on Gitter leads to their faster resolution.


df0<-read.csv("~/gitGroup0.csv")
df1<-read.csv("~/gitGroup1.csv")
df2<-read.csv("~/gitGroup2.csv")
df3<-read.csv("~/gitGroup3.csv")
df4<-read.csv("~/gitGroup4.csv")
df5<-read.csv("~/gitGroup5.csv")
df6<-read.csv("~/gitGroup6.csv")
df7<-read.csv("~/gitGroup7.csv")
df8<-read.csv("~/gitGroup8.csv")
df9<-read.csv("~/gitGroup9.csv")
df10<-read.csv("~/gitGroup10.csv")
df11<-read.csv("~/gitGroup11.csv")
df12<-read.csv("~/gitGroup12.csv")
df13<-read.csv("~/gitGroup13.csv")
df14<-read.csv("~/gitGroup14.csv")
df15<-read.csv("~/gitGroup15.csv")

rdf0<-read.csv("~/ranGroup0.csv")
rdf1<-read.csv("~/ranGroup1.csv")
rdf2<-read.csv("~/ranGroup2.csv")
rdf3<-read.csv("~/ranGroup3.csv")
rdf4<-read.csv("~/ranGroup4.csv")
rdf5<-read.csv("~/ranGroup5.csv")
rdf6<-read.csv("~/ranGroup6.csv")
rdf7<-read.csv("~/ranGroup7.csv")
rdf8<-read.csv("~/ranGroup8.csv")
rdf9<-read.csv("~/ranGroup9.csv")
rdf10<-read.csv("~/ranGroup10.csv")
rdf11<-read.csv("~/ranGroup11.csv")
rdf12<-read.csv("~/ranGroup12.csv")
rdf13<-read.csv("~/ranGroup13.csv")
rdf14<-read.csv("~/ranGroup14.csv")
rdf15<-read.csv("~/ranGroup15.csv")