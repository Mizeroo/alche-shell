#!/bin/bash

echo "Enter the filename:"
read filename

echo "Enter the command:"
read command

echo "#!/bin/bash" > "$filename"
echo "$command" >> "$filename"

chmod +x "$filename"

git add "$filename"
git commit -m "created $filename"
git push

echo "Successfully created $filename and pushed to git!"
