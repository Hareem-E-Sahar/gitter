### Reads csv files
import csv
import os
from collections import Counter


root = "../output-repo-only-issues/"
path = os.path.join(root, "output-repo-only-issues/")
gitterfiles = []
for path, subdirs, files in os.walk(root):
        for name in files:
            if(name.endswith('.csv')):
                gitterfiles.append(name)
gitterfiles.sort()

root2 = "../git-collaborators-aliases-resolved/"
path2 = os.path.join(root2, "git-collaborators-aliases-resolved/")
githubfiles = []
for path2, subdirs, files in os.walk(root2):
        for name in files:
            if(name.endswith('.csv')):
                githubfiles.append(name)
githubfiles.sort()

 #read the gitter data here, displayname and username
for i in range(0,2):
    gitterpath = os.path.join(path, gitterfiles[i])
    print(gitterpath)
    githubpath = os.path.join(path2, githubfiles[i])
    with open(gitterpath,'r') as csvfile:
         gitter_data=[ ]
         disp=[]
         user=[]
         readCSV = csv.reader(csvfile, delimiter=',')
         for row in readCSV:
            disp.append(row[0])
            user.append(row[1])
    #print("Total Issues/Users ", len(disp)-1, "  ", len(user)-1)      #contains duplicates

    #Remove duplicates from username and displayname
    displayName=[]
    username=[]
    for j in range(1,len(disp)):                                      #excluding header
       displayName = list( dict.fromkeys(disp) )
       username = list( dict.fromkeys(user) )
    #print("Unique ", len(displayName)-1,"  ", len(username)-1)      #to remove header displayName and username
    #read github data
    with open(githubpath,'r') as csvfile:
         github_data=[ ]
         readCSV = csv.reader(csvfile, delimiter=',')
         for row in readCSV:
            github_data.append(row)

    #Find matches
    matches=[]
    counter=0
    for i in range(0, len(github_data)):                      #start from 0 becasue no header
        for j in range(0,(min(len(displayName),len(username)))):

                if( displayName[j].lower() == github_data[i][0].lower()):
                    counter+=1
                    matches.append(displayName[j])

                elif(username[j].lower() == github_data[i][0].lower()):   #start from 0 becasue no header
                        counter+=1
                        matches.append(username[j])
                        #print(username[j],"  ",github_data[i][0])

    print("No. of Collaborators ", len(github_data))
    print("No. of matches:", counter)
    print("Percentage:", counter/(len(username)-1)*100)     
                                                            
    print(matches)
    actualIssues=0
    matches = list( dict.fromkeys(matches) )

    for m in matches:
        for i in range(0,len(disp)):
            if m==disp[i]:
                actualIssues = actualIssues + 1
            elif m== user[i]:
                actualIssues = actualIssues + 1

    print("No of Issues ", actualIssues)
    print( "Percentage of Issues:",actualIssues/(len(disp)-1)*100)
    print("=================================================================================")
