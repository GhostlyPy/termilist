#!/bin/bash

#########################################################
# Creator: battleoverflow                                 #
# Learn more: https://github.com/battleoverflow/termilist #
#########################################################

echo
echo "___________                      .__ .____     .__           __    "
echo "\__    ___/____ _______   _____  |__||    |    |__|  _______/  |_  "
echo "  |    |  _/ __ \\_  __ \ /     \ |  ||    |    |  | /  ___/\   __\ "
echo "  |    | \  ___/ |  | \/|  Y Y  \|  ||    |___ |  | \___ \  |  |   "
echo "  |____|  \___  >|__|   |__|_|  /|__||_______ \|__|/____  > |__|   "
echo "              \/              \/             \/         \/         "
echo
echo "Creator: battleoverflow (https://github.com/battleoverflow)"
echo "Version: 1.0.3"
echo "Project: https://github.com/battleoverflow/termilist"
echo

echo "Create a directory:"
echo -n "$ "
read DirName

if [ -d "$DirName" ];
then
    echo "Directory already exists"
else
    `mkdir $DirName`
    echo "Directory was successfully created"
fi

cd $DirName

echo "Create a file (file will automatically be saved with a txt extenstion):"
echo -n "$ "
read ToDoFile

if [ -d "$ToDoFile" ];
then
    echo "File name already exists"
else
    `touch $ToDoFile.txt`
    echo "File was successfully created"
fi

echo "Add item to your list: "
read ToDoItem

declare -a StringArray=("$ToDoItem")

for item in "${StringArray[@]}";
do
    echo $item >> $ToDoFile.txt
done