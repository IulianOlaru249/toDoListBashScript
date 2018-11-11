#!/bin/bash

echo "Hello, ${USER}!" 
echo -n "Do you want to add anything to your 'to do' list? "
read -p "[y/n] " answer

if [ "$answer" == "n" ] ; then 
    echo "Dope! Enjoy your staying!"
else
    read -p "What is it? `echo $'\n> '` " listItem 
    echo $listItem >> /home/iuli/toDoListScript/toDoList.txt
   
    while [ 1 ]; do
        echo -n "Anything else? "
        read -p "[y/n] " answer
        
        if [ "$answer" == "n" ]; then
            echo "Dope! Good luck. :)"
            break
        fi
        
        read -p "What is it? `echo $'\n> '` " listItem 
        echo $listItem >> /home/iuli/toDoListScript/toDoList.txt

    done 
fi
    
