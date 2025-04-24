# spiky-gold
This repository contains hands-on practice tasks for core DevOps concepts..

 $ https://umatechnology.org/what-is-shell-scripting-and-why-you-should-use-it/

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

- ls = list files
- ls -la = list all files(including hidden)
- ls -ltr = provides content like properties of file and folder

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

# Day8 Create multiple users from a file

- cut -d: -f1 /et/passwd = To list all users on system
- cat /etc/passwd | grep username = If you want to list all users created during this session
- sudo userdel -r username = delete user along with home directory

# Day 9 Create backup folder

The main command that:

| tar -cvf | tar -xvf | tar -xzvf | tar -czvf | tar -xyfz |

- c → Creates an archive by bundling files and directories together.	
- z → Compresses it using gzip.
- v → Verbose mode (shows you which files are being added).
- f → Specifies the filename of the archive to be created or extracted.
- x → Extracts files and directories from an existing archive.
- z → gzip compression resulting in a compressed archive with the ‘.tar.bz2’ extension.

- tar -xyfz demo.tar.gz = untar

# Day13 Find larger files

- SIZE_THRESHOLD="+100M"   =	Define the size limit (find files larger than 100MB).
- In the find command:

  Unit	Meaning
  c	Bytes
  k	Kilobytes (1024 bytes)
  M	Megabytes (1024×1024 bytes)
  G	Gigabytes (1024×1024×1024 bytes)

- No plus (+) → exact size match.
- With plus (+) → greater than size.
- With minus (-) → smaller than size.

# Day17 Schedule script via cron

Used to check out cron jobs:
$ https://crontab.guru/

- crontal -l = list all your current jobs
- crontab -e = edit your cron jobs
- crontab -r = remove all cron jobs
- systemctl status cron = check if cron service is running

If you want to see another user’s cron jobs (needs sudo):
- sudo crontab -l -u username (shows root's cron jobs)

Creates a cron log to check if it's running:
- COMMAND="/home/vineeth/Dev/spiky-gold-practice/shell-scripting-30days/day01-hello-world.sh >> /home/vineeth/Dev/spiky-gold-practice/shell-scripting-30days/cron.log 2>&1"

How to check the log whether it's running:
- tail -f /home/vineeth/Dev/spiky-gold-practice/shell-scripting-30days/cron.log

Scripted Removal of cron (using backup and grep):
- crontab -l | grep -v 'day01-hello-world.sh' | crontab -

 	→  crontab -l → list all current cron jobs.
	→  grep -v 'day01-hello-world.sh' → remove lines containing day01-hello-world.sh.
	→  crontab - → load the new list without that job.

# Day18 change file permissions

- check currently logged in user = whoami
- check user accounts = cut -d: -f1 /etc/passwd
- change ownership of file =  chown user file/directory
- add a group = groupadd <group-name>
- check group list = cat /etc/group 
- change group = chgrp <group-name> <file/dire>
- add user to excisting group = adduser <user-name> <group-name>

Permissions:
	→ Read = r = 4
	→ Write = w = 2
	→ Execute = x = 1
- chmod <permissions> <file-name>

How to make the script executable:
- chmod +x <file-name>

# Day19 renaming multiple files

- copy files = cp <source-path> <destination>
- to cut and copy and rename = mv <old-file-name> <new-file-name>

How to rename only particular file with name (file.txt or demo.txt):
- Loop through only files starting with 'file' and ending with '.txt'
	for file in "$TARGET_DIR"/file*.txt; do
 	   [ -e "$file" ] || continue
- for file in "$TARGET_DIR"/file*.txt →  Select only files starting with file
- [ -e "$file" ] || continue →  This line skips if there are no matching files (otherwise you get errors like mv ./file*.txt: No such file or directory).

How to change all the files name back to old one:
- Loop through files starting with 'demo_'
	for file in "$TARGET_DIR"/demo_*.txt; do
  	   [ -e "$file" ] || continue

Rename back:
- Remove the "demo_" prefix to get original name
        original_name="${base#demo_}"
  	mv "$file" "$TARGET_DIR/$original_name"
- original_name="${base#demo_}" →  Remove "demo_" from the start of filename (using shell substring removal).
- mv → 	Move (rename) back to original name.

# Day22 Monitor CPU and Memory usage

- top = task manager for linux
It shows real-time:
	→  CPU usage
	→  Memory usage
	→  Running processes
	→  Load averages
	→  System uptime
	→  Process IDs (PIDs)

- free = show RAM and swap usage
Tells you:
	→  How much memory is total
	→  How much is used
	→  How much is free
	→  How much is available for new apps



- top -b -n1: 
→  top	Shows real-time CPU and memory usage for processes.
→  -b	Batch mode (for scripts — no interactive display).
→  -n1	Update once and exit (only 1 snapshot).

- grep "Cpu(s)":
→  grep	Filters lines matching the text "Cpu(s)".

- free -h:
→  free	Shows system memory (RAM + swap) usage.
→  -h	Human-readable (e.g., shows 2.1G instead of 2147483648 bytes).

- uptime:
→  uptime	Shows system uptime (how long machine is running), load averages.
