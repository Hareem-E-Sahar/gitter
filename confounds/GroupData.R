library(dplyr)

gitdata<-read.csv("~/GitterIssues.csv")

gitdata$assigneeid[is.na(gitdata$assigneeid)]<-0

# remove values with resolution time = NA as those indicate issues not closed yet
gitdata<-na.omit(gitdata)  #after this number of rows will decrease

#0000
gitdf0 <-filter(gitdata, milestone=="NO", commentcount  <=6, author_association =="NONE",assigneeid==0)  
#0001
gitdf1 <-filter(gitdata, milestone=="NO", commentcount <=6, author_association =="NONE",assigneeid>0)    
#0010
gitdf2 <-filter(gitdata, milestone=="NO", commentcount  <=6, author_association !="NONE" , assigneeid==0)
#0011
gitdf3 <-filter(gitdata, milestone=="NO", commentcount <=6, author_association!="NONE" ,assigneeid>0) 
#0100
gitdf4 <-filter(gitdata, milestone=="NO", commentcount >6, author_association =="NONE",assigneeid==0)    
#0101
gitdf5 <-filter(gitdata, milestone=="NO", commentcount  >6,author_association =="NONE",assigneeid>0)
#0110
gitdf6 <-filter(gitdata, milestone=="NO", commentcount  > 6, author_association!="NONE",assigneeid==0)
#0111
gitdf7 <-filter(gitdata, milestone=="NO", commentcount  > 6, author_association!="NONE",assigneeid>0)
#1000
gitdf8 <-filter(gitdata, milestone=="YES", commentcount  <=6, author_association =="NONE",assigneeid==0)
#1001
gitdf9 <-filter(gitdata, milestone=="YES", commentcount  <=6, author_association =="NONE", assigneeid>0)
#1010
gitdf10 <-filter(gitdata, milestone=="YES", commentcount  <=6, author_association!="NONE",assigneeid==0)
#1011
gitdf11 <-filter(gitdata, milestone=="YES", commentcount  <=6, author_association!="NONE",assigneeid>0)
#1100
gitdf12 <-filter(gitdata, milestone=="YES", commentcount >6, author_association =="NONE",assigneeid==0) 
#1101
gitdf13 <-filter(gitdata, milestone=="YES", commentcount >6, author_association =="NONE",assigneeid>0) 
#1110
gitdf14 <-filter(gitdata, milestone=="YES", commentcount  >6, author_association!="NONE",assigneeid==0)
#1111
gitdf15 <-filter(gitdata, milestone=="YES", commentcount  >6, author_association!="NONE",assigneeid>0)

l=nrow(gitdf0)+nrow(gitdf1)+nrow(gitdf2)+nrow(gitdf3)+nrow(gitdf4)+nrow(gitdf5)+nrow(gitdf6)+nrow(gitdf7)+nrow(gitdf8)+nrow(gitdf9)+nrow(gitdf10)+nrow(gitdf11)+nrow(gitdf12)+nrow(gitdf13)+nrow(gitdf14)+nrow(gitdf15)


write.csv()
######################################################################################################################################
randata<-read.csv("/home/hareem/1-Gitter-MSR-Reviews/Reviewer2/confounds/ResolutionTimeWithConfounds_Random/1-RandomIssues.csv")

randata$assigneeid[is.na(randata$assigneeid)]<-0

# remove values with resolution time = NA as those indicate issues not closed yet
randata<-na.omit(randata)

#0000
randf0 <-filter(randata, milestone=="NO", commentcount  <=6, author_association =="NONE",assigneeid==0)  
#0001
randf1 <-filter(randata, milestone=="NO", commentcount <=6, author_association =="NONE",assigneeid>0)    
#0010
randf2 <-filter(randata, milestone=="NO", commentcount  <=6, author_association !="NONE" , assigneeid==0)
#0011
randf3 <-filter(randata, milestone=="NO", commentcount <=6, author_association!="NONE" ,assigneeid>0) 
#0100
randf4 <-filter(randata, milestone=="NO", commentcount >6, author_association =="NONE",assigneeid==0)    
#0101
randf5 <-filter(randata, milestone=="NO", commentcount  >6,author_association =="NONE",assigneeid>0)
#0110
randf6 <-filter(randata, milestone=="NO", commentcount  > 6, author_association!="NONE",assigneeid==0)
#0111
randf7 <-filter(randata, milestone=="NO", commentcount  > 6, author_association!="NONE",assigneeid>0)
#1000
randf8 <-filter(randata, milestone=="YES", commentcount  <=6, author_association =="NONE",assigneeid==0)
#1001
randf9 <-filter(randata, milestone=="YES", commentcount  <=6, author_association =="NONE", assigneeid>0)
#1010
randf10 <-filter(randata, milestone=="YES", commentcount  <=6, author_association!="NONE",assigneeid==0)
#1011
randf11 <-filter(randata, milestone=="YES", commentcount  <=6, author_association!="NONE",assigneeid>0)
#1100
randf12 <-filter(randata, milestone=="YES", commentcount >6, author_association =="NONE",assigneeid==0) 
#1101
randf13 <-filter(randata, milestone=="YES", commentcount >6, author_association =="NONE",assigneeid>0) 
#1110
randf14 <-filter(randata, milestone=="YES", commentcount  >6, author_association!="NONE",assigneeid==0)
#1111
randf15 <-filter(randata, milestone=="YES", commentcount  >6, author_association!="NONE",assigneeid>0)

l=nrow(randf0)+nrow(randf1)+nrow(randf2)+nrow(randf3)+nrow(randf4)+nrow(randf5)+nrow(randf6)+nrow(randf7)+nrow(randf8)+nrow(randf9)+nrow(randf10)+nrow(randf11)+nrow(randf12)+nrow(randf13)+nrow(randf14)+nrow(randf15)


