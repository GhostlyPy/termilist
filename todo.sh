#!/bin/bash

######################
# Creator: GhostlyPy #
######################

echo "#######################"
echo "# Creator: GhostlyPy  #"
echo "#######################"

echo "Just a fun mini-project I created one night!"

echo "Create a directory:"
echo -n "> "
read DirName

if [ -d "$DirName" ]
then
    echo "Directory already exists"
else
    `mkdir $DirName`
    echo "Directory was successfully created"
fi

cd $DirName

echo "Add item to your list: "
read ToDoItem

declare -a StringArray=("$ToDoItem")

for item in "${StringArray[@]}"; do
    echo $item >> ToDoList.txt
done
