#!/bin/bash
repo="pretty_cpp_run"

if [ "$1" == "run" ] ; then
    bash ~/$repo/run.sh $repo $2
elif [ "$1" == "create" ] ; then
    bash ~/$repo/create.sh $repo $2
else
    echo "this is help section"
fi