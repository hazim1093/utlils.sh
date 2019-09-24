if [ -z ${1} ] || [ -z ${2} ];
then
    echo "Usage: $(basename $0) <String to replace in origin> <String to replace with in origin>"
    exit -1;
fi

replace=${1}
with=${2}

for gits in $(find . -maxdepth 4 -name '.git'); do
    dir=${gits%\/*};
    echo "Updating: $dir"
    pushd $dir > /dev/null
    oldOrigin=$(git remote get-url --all origin)
    echo "Old: $oldOrigin"
    newOrigin=${oldOrigin/${replace}/${with}}
    git remote set-url origin $newOrigin
    echo "New: $newOrigin"
    echo ""
    popd > /dev/null
done
