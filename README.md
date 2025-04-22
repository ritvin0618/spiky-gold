# spiky-gold
This repository contains hands-on practice tasks for core DevOps concepts..

# Day2 print-date-time
This uses the date command with formatting:
date +"%Y-%m-%d %H:%M:%S"

%Y → Year
%m → Month 
%d → Day 
%H → Hour (24-hour format)
%M → Minutes
%S → Seconds

# Day4 Copy and Move Files Script
cp -v
- This uses the cp (copy) command to copy all files from the source directory ($SOURCE_DIR) to the destination directory ($DEST_DIR).
- The -v flag makes the command verbose, meaning it will print each file being copied.
mv -v
- This uses the mv (move) command to move a specific file (old_file.txt) from the source directory to the destination directory and renames it as new_file.txt.
cp -iv
- This command uses cp with the -i flag for interactive copying. It prompts the user for confirmation before overwriting existing files in the destination directory.
cp -r
- The -r flag in the cp command tells it to copy directories recursively, meaning it will copy not only files but also any subdirectories and their contents from the source to the destination.

# Day5 List all files in a folder
ls = list files
ls -la = list all files(including hidden)
ls -ltr = provides content like properties of file and folder

# Day6 Take input from user
read -p "Enter your name: " name
echo "Hello, $name! 👋"

- (-p option lets you give a prompt directly inside read.)

# Day7 Check if file exsist
- read -p ➔ Asks the user to input the filename.
- if [ -f "$filename" ] ➔ Checks if that file exists and is a regular file.
- then echo "File exists" ➔ If true, prints success.
- else echo "File does not exist" ➔ If not, prints failure.

If you want to check if a file exists, you'd use -f like this:
If you want to check if a directory exists, you'd use -d like this:

