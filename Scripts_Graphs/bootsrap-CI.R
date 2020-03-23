len<-c(181, 2062,  114,   18,  12,  193, 822, 24,  43,  21, 3, 39, 56, 89, 132, 14, 101, 168, 21, 534, 8, 178, 513, 675)
N=1000
alpha = 0.05

data1=read.csv("1-GitterIssues.csv")
files<-list.files("~/ResolutionTime-bootstrapped/")

  # booted stores actual difference of means in ith iteration
  booted <- sapply(c(1:N), function(i) { 
    print(i)
    allissues<-c()
    for(j in (1:24))
    { #print(j)
      data2 = read.csv(paste("~/ResolutionTime-bootstrapped/",files[j],sep=""))
      onefile<-sample(data2$resolution_time,len[j],replace=TRUE)
      allissues<-c(allissues,onefile)
    }
    median(data1$restime, na.rm = TRUE) - median(allissues ,na.rm = TRUE)
  })
  
  summary(booted)
  #Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  #152.8   155.8   156.7   156.5   157.3   159.8 
  print(quantile(booted,c(alpha/2,1.0 - alpha/2),na.rm = TRUE))
  #2.5%    97.5% 
  #154.1433 158.1756 
  #write.csv(df,"ResolutionTime-Bootstrapped-Issues.csv")  
  # I have a SummaryStats file and and a file containing differnce of medians.
