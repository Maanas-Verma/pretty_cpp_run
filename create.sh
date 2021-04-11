File="template" ;
Afile="$1/template/A.cpp"
Infile="$1/template/input.txt"
path="$PWD"
if [ -e $File ] ; then 
    cd ~
    if [ -e $Afile ] ; then
        if [ -e $Infile ] ; then
            cd $path
            mkdir $2
            cp ~/$1/template/A.cpp $path/$2
            cp ~/$1/template/input.txt $path/$2
            echo "$path/$2"
        else 
            echo "file $Infle not present error 1"
        fi
    else
        echo "file $Afilenot not present error 2"
    fi
else
    echo "file $File not present error 3"
fi