#echo "Provide GIT Repo"

read $1

echo "Your entered $1"
#Read all files that are part of Git
#echo "Provide localFolder to clone"

read $2

echo "Your entered $2"
git clone "$1" "$2"

fileNames=$(git -C $2 log origin/main --name-only --pretty=format: main)

#convert variable to array

IFS=$'\n' array=($fileNames)

echo "------ Printing file names"

for element in "${array[@]}"

do  

    echo "Trying to add White space in $element"

    printf " " >> $element 

done 
