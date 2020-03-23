### Old name of this file was matches.py
### Reads csv files
import csv
import Levenshtein as lev
import os
from collections import Counter

root = "~/output-repo-only-issues/"
path = os.path.join(root, "output-repo-only-issues")
for path, subdirs, files in os.walk(root):
    files.sort()

root2 = "~/git-contributors/"
path2 = os.path.join(root, "git-contributors")
for path2, subdirs, githubfiles in os.walk(root2):
    githubfiles.sort()

for i in range(0,24): #len(files)):
    if(files[i].endswith('.csv')):
        gitterpath = os.path.join(path, files[i])
        #print(gitterpath)

    if(githubfiles[i].endswith('.csv')):
        githubpath = os.path.join(path2, githubfiles[i])
        #print(githubpath)
    #print("\n")

    with open(gitterpath, 'r') as csvfile:
        disp = []
        user = []
        readCSV = csv.reader(csvfile, delimiter=',')
        for row in readCSV:
            disp.append(row[0])
            user.append(row[1])
        #print("Total Issues/Users ", len(disp) - 1)
        # Remove duplicates from username and displayname
        displayName = []
        username = []
        displayName = list(dict.fromkeys(disp))
        username = list(dict.fromkeys(user))
        #print("Unique displayNames", len(displayName))
        #print("Unique userames",len(username))

    with open(githubpath, 'r') as csvfile2:
         github_data = []
         github_data_uniq = []
         readCSV = csv.reader(csvfile2, delimiter=',')
         for row in readCSV:
             github_data.append(row[0])
         #print("Total GitHub Contributors ", len(github_data) - 1)
         # Remove duplicates from github_data
         github_data_uniq = list(dict.fromkeys(github_data))
         #print("Unique Contributors ", len(github_data_uniq)-1)

        # Find matches
         unequser = []
         uneqdis = []
         equser = []
         eqdis = []
         counterEq=0
         counter = 0
         counter2 = 0
         for j in range(0, len(github_data_uniq)):
             for k in range(0, min(len(username),len(displayName))):
                if ((lev.ratio(username[k] , github_data_uniq[j])) == 1.0):
                    counterEq += 1
                    matchesEq = []
                    matchesEq.append(username[k])
                    matchesEq.append(github_data_uniq[j])
                    if(matchesEq):
                        equser.append(matchesEq)

                elif ((lev.ratio(displayName[k] ,github_data_uniq[j]))==1.0):
                    counterEq += 1
                    matchesEq = []
                    matchesEq.append(displayName[k])
                    matchesEq.append(github_data_uniq[j])
                    if(matchesEq):
                        eqdis.append(matchesEq)

                elif ((lev.ratio(username[k].lower(), github_data_uniq[j].lower() )) > 0.7):
                     counter += 1
                     matchesuser = []
                     matchesuser.append(username[k])
                     matchesuser.append(github_data_uniq[j])
                     if(matchesuser):
                         unequser.append( matchesuser)
                elif ((lev.ratio(displayName[k].lower() ,github_data_uniq[j].lower() ))> 0.7):
                     counter2 += 1
                     matchesdis = []
                     matchesdis.append(displayName[k])
                     matchesdis.append(github_data_uniq[j])
                     if(matchesdis):
                        uneqdis.append(matchesdis)
         '''
         print("\n")
         print("No. of 100% matches:", counterEq)
         print(equser)
         print("\n")
         print(eqdis)
         print("\n")
         print("No. of matches in User:", counter)
         print("No. of matches in Display:", counter2)
         print(unequser)
         print("\n")
         print(uneqdis)
         print("====================================================================================================")
         '''
         print(len(username),",",counter+counter2)
