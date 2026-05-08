# Unique identifier for the command or section
id
# Displays the groups a user belongs to
groups
# Displays user account information stored in the system
cat /etc/passwd
# Displays the first 10 lines of the passwd file
cat /etc/passwd | head -10 
# They inherit the UID and the GEID
touch test.txt
ls -la
#View all system groups
cat /etc/group | head -10 
# Displays the current user's UID, primary GID, and all group IDs
id -u
id -g
id -G
