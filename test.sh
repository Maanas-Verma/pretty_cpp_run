#!/bin/bash
repo="pretty_cpp_run"

if [ "$1" == "run" ] ; then
    bash ~/$repo/run.sh $2 $repo
elif [ "$1" == "create" ] ; then
    bash ~/$repo/create.sh $2 $repo
else
    echo "this is help section"
fi