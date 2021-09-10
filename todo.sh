#!/bin/bash

#########################################################
# Creator: Hifumi Sec                                   #
# Created: 08/18/2021                                   #
# Version: 1.0.1                                        #
# Project: https://github.com/Hifumi-Sec/termilist      #
#########################################################

echo
echo "___________                      .__ .____     .__           __    "
echo "\__    ___/____ _______   _____  |__||    |    |__|  _______/  |_  "
echo "  |    |  _/ __ \\_  __ \ /     \ |  ||    |    |  | /  ___/\   __\ "
echo "  |    | \  ___/ |  | \/|  Y Y  \|  ||    |___ |  | \___ \  |  |   "
echo "  |____|  \___  >|__|   |__|_|  /|__||_______ \|__|/____  > |__|   "
echo "              \/              \/             \/         \/         "
echo
echo "Creator: Hifumi Sec (https://github.com/Hifumi-Sec)"
echo "Version: 1.0.1"
echo "Project: https://github.com/Hifumi-Sec/termilist"
echo "Support the dev: https://github.com/sponsors/hifumi-sec"
echo

echo "Create a directory:"
echo -n "$ "
read DirName

if [ -d "$DirName" ]
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

if [ -d "$ToDoFile" ]
then
    echo "File name already exists"
else
    `touch $ToDoFile.txt`
    echo "File was successfully created"
fi

echo "Add item to your list: "
read ToDoItem

declare -a StringArray=("$ToDoItem")

for item in "${StringArray[@]}"; do
    echo $item >> $ToDoFile.txt
done