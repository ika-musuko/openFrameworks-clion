#!/bin/bash
# files that need to be edited to change the project name
rename_these=( CMakeLists.txt .idea/runConfigurations/oFDebug.xml )

# get the current project name from the buffer file
project_name=$(<.project_name)

# loop over all the files and rename them using ex
echo "renaming $project_name to $1..."
for f in "${rename_these[@]}"
do
    echo modifying "$f"...
    ex -s +%s/$project_name/$1/g +x "$f"
done

# change the project name in the buffer file for future renaming
echo $1 > .project_name
