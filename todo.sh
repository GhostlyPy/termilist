#!/bin/bash

#########################################################
# Creator: Hifumi1337                                   #
# Created: 08/18/2021                                   #
# Version: 1.0.2                                        #
# Project: https://github.com/Hifumi1337/termilist      #
#########################################################

echo
echo "___________                      .__ .____     .__           __    "
echo "\__    ___/____ _______   _____  |__||    |    |__|  _______/  |_  "
echo "  |    |  _/ __ \\_  __ \ /     \ |  ||    |    |  | /  ___/\   __\ "
echo "  |    | \  ___/ |  | \/|  Y Y  \|  ||    |___ |  | \___ \  |  |   "
echo "  |____|  \___  >|__|   |__|_|  /|__||_______ \|__|/____  > |__|   "
echo "              \/              \/             \/         \/         "
echo
echo "Creator: Hifumi1337 (https://github.com/Hifumi1337)"
echo "Version: 1.0.2"
echo "Project: https://github.com/Hifumi1337/termilist"
echo "Support the dev: https://github.com/sponsors/hifumi1337"
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