#!/bin/bash

File="template" ;
Afile="A.cpp"
Infile="input.txt"
if [ -e $File ] ; then 
    # active only when there is a minimum requirement satisfy that is wheather template file is present or not
    if [ -e $1 ] ; then 
        # It is active in two cases one is when there is a file or no file name is given
        if [ -z $1 ] ; then 
            # It is active when there no file name provided
            Lpath=$(<last.txt)                            # file content of last.txt
            echo "Last running file is at path '$Lpath'"  # print last running file address
            printf "You want to run this file? y/n:"      # always ask before runnning
            read perm
            if [ $perm == "y" ] ; then
                # reurn the test script having the path by last.txt
                bash ~/$2/test.sh run $Lpath
            else
                echo "Okay not running"
            fi
        else
            if [ -e $1/A.cpp ] ; then
                if [ -e $1/input.txt ] ; then
                    g++ $1/A.cpp -o $1/A
                    $1/A < $1/input.txt > $1/output.txt
                    code $1/output.txt
                    echo $1 > last.txt
                    echo "running file is at current -> $1"
                else
                    echo "input.txt file dont exist in $1"
                fi
            else
                echo "A.cpp file dont exist in $1"
            fi
        fi
    else
        echo "The file $1 does not exist in current directory"
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