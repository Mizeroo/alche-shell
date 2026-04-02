#!/bin/bash

read -p "Enter the filename: " file
read -p "Enter the command: " cmd

echo -e "#!/bin/bash\n$cmd" > "$file"

chmod u+x "$file"

git add "$file"
git commit -m "Added $file"
git push
