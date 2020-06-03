#!/bin/sh

name=''
desc=''

while getopts ":n:d:" opt; do
    case $opt in
        n) name=$(sed -E "s/(\s+)/-/g;s/(.*)/\L\1/" <<< "$OPTARG")
           ;;
        d) desc="$OPTARG"
           ;;
        \?) echo "Invalid option -$OPTARG" >&2
            ;;
    esac
done

if [ -n "$name" ];
then
    # ln -fs $PWD/git-hooks/pre-commit .git/hooks/pre-commit
    sed -E "s/template/$name/;s/some description/$desc/" Dockerfile
fi
