#!/usr/bin/env bash
#all script

read -p "Enter file name: " file
read -p "Enter command: " cmd

echo "#!/usr/bin/env bash\n#process\n$[cmd]" > $file

chmod +x $[file]
git add $file
git commit -m 'added $file"
git push

