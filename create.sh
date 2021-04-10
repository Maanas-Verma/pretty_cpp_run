File="template" ;
Afile="$2/template/A.cpp"
Infile="$2/template/input.txt"
path="$PWD"
if [ -e $File ] ; then 
    cd ~
    if [ -e $Afile ] ; then
        if [ -e $Infile ] ; then
            cd $path
            mkdir $1
            cp ~/$2/template/A.cpp $path/$1
            cp ~/$2/template/input.txt $path/$1
            echo "$path/$1"
        else 
            echo "file courupted error 1"
        fi
    else
        echo "file courupted error 2"
    fi
else
    echo "file courupted error 3"
fi