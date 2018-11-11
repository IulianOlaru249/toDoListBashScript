#!/bin/bash

if [ -s /home/iuli/toDoListScript/toDoList.txt ] ; then
    
    echo "Hello ${USER}. Your agenda for today is as it follows: "
    cat -n /home/iuli/toDoListScript/toDoList.txt

else
    
    echo "Your agenda is empty! Enjoy your day. :)"

fi



