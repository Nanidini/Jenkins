echo "Provide GIT Repo"

read readgitRepo

echo "Your entered $readgitRepo"
#Read all files that are part of Git
echo "Provide localFolder to clone"

read localFolder

echo "Your entered $localFolder"
git clone "$readgitRepo" "$localFolder"

fileNames=$(git -C $localFolder log origin/main --name-only --pretty=format: main)

#convert variable to array

IFS=$'\n' array=($fileNames)

echo "------ Printing file names"

for element in "${array[@]}"

do  

    echo "Trying to add White space in $element"

    printf " " >> $element 

done