#!/bin/bash


if [ "$1" == "run" ] ; then
    File="template" ;
    Afile="A.cpp"
    Infile="input.txt"
    if [ -e $File ] ; then 
        # check if given file is there
        if [ -e $2 ] ; then
            if [ -z $2 ] ; then
                Lpath=$(<last.txt)
                echo "Last running file is at path '$Lpath'"
                printf "You want to run this file? y/n:"
                read perm
                if [ $perm == "y" ] ; then
                    # reurn the test script having the path by last.txt
                    bash ~/CP_env/test.sh run $Lpath
                else
                    echo "Okay not running"
                fi
            else
                if [ -e $2/A.cpp ] ; then
                    if [ -e $2/input.txt ] ; then
                        g++ $2/A.cpp -o $2/A
                        $2/A < $2/input.txt > $2/output.txt
                        code $2/output.txt
                        echo $2 > last.txt
                        echo "running file is at current -> $2"
                    else
                        echo "input.txt file dont exist in $2"
                    fi
                else
                    echo "A.cpp file dont exist in $2"
                fi
            fi
        else
            echo "The file $2 does not exist in current directory"
        fi
    else 
        if [ -e $Afile ] ; then 
            if [ -e $Infile ] ; then 
                g++ ./A.cpp -o ./A
                ./A < input.txt > output.txt
                code output.txt
                echo ${PWD##*/} > ../last.txt
                echo "running file is at $PWD"
            else
                echo "Input file is not given in this dir"
            fi
        else
            # ls -la > ls.txt
            # cat ls.txt
            echo "this is really sad that you are not in the working dir"
            echo "because A.cpp is not present"
        fi
    fi
elif [ "$1" == "create" ] ; then
    File="template" ;
    Afile="CP_env/template/A.cpp"
    Infile="CP_env/template/input.txt"
    path="$PWD"
    if [ -e $File ] ; then 
        cd ~
        if [ -e $Afile ] ; then
            if [ -e $Infile ] ; then
                cd $path
                mkdir $2
                cp ~/CP_env/template/A.cpp $path/$2
                cp ~/CP_env/template/input.txt $path/$2
                echo "$path/$2"
            else 
                echo "file courupted error 1"
            fi
        else
            echo "file courupted error 2"
        fi
    else
        echo "file courupted error 3"
    fi
else
    echo "this is help section"
fi