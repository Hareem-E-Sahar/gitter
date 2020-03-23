file="deeplearning4j" 			#name of file that contains specific issue numbers i.e. issues discussed in gitter
#issuenumber=$(cat "$file")

issuenumber=($(< deeplearning4j))


while read issuenumber ;

do

echo https://api.github.com/repos/eclipse/deeplearning4j/issues/"$issuenumber"
curl -n https://api.github.com/repos/eclipse/deeplearning4j/issues/"$issuenumber" >> deeplearning4j-github-issues.json

done < "$file"


# use the following query to trim the full length issues

#cat deeplearning4j-github-issues.json | jq '. | {number:.number,title:.title,created_at:.created_at,closed_at:.closed_at,pull_request:.pull_request.html_url}'  >> deeplearning4j-github-issues-trimmed.json
