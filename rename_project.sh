project_name=$(<.project_name)
rename_these=(CMakeLists.txt .idea/runConfigurations/oFDebug/xml)
echo "renaming $project_name to $1..."
for f in $rename_these
do
    ex -s +%s/$project_name/$1/g +x $f
done
echo $1 > .project_name
