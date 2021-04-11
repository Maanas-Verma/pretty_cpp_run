# pretty_cpp_run
Here I have work on bash files and create a simple file that helps to run cpp files very easily for the purpose of competative programming

I am pretty sure you will get this repo so pretty

go to [pretty_cpp_wiki](https://maanas-verma.github.io/pretty_cpp_run/)

## Installation
First of all for using this repo is Installation
- ### Step 1:
    run this on terminal 
    ```
    cd ~
    git clone https://github.com/Maanas-Verma/pretty_cpp_run.git
    ```

- ### Step 2: 
    On same terminal and enter this command
    ```
    sudo nano /etc/bash.bashrc
    ```
    and then put your password there
- ### Step 3:
    Go to last line of this file and add the following line. 
    ```
    alias m="bash ~/pretty_cpp_run/test.sh"
    ```
    First of all save this file by pressing ' Ctrl+O ' -> press Enter -> press ' Ctrl+X '


## Setup 
After installtion you need to have a small setup too. This will be converted in a sigle line code in latter version of this repo.
<br> 
Simply go to this repos directory and copy the template folder and paste it to the folder where you want to work. It will ensure that we are in correct directory.

## How to use it

Basic commands that you can use in this repo are

* ### Creating a new folder or question name
    ```
    m create <folder name>
    ```
    By the help of this command you can create a folder for your new question of compitative programming

* ### Running file by name
    ```
    m run <folder name>
    ```
    By the help of this command you can run a folder or A.cpp file related to your question name.

* ### Running last running file again after making changes
    ```
    m run
    ```
    It will run the file that was run by us last time. It will reduce time by just seeing what file you have run last time. 
* ### get help section
    ``` 
    m help
    ```
    this line or any other words other than upper commands will result to giving help section