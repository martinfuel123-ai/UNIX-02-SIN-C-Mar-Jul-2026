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
# Creates a new directory named proyecto_unix in the home folder
mkdir ~/proyecto_unix/
# Lists all files and directories inside proyecto_unix with detailed information
ls -la ~/proyecto_unix/
# Basic syntax for creating groups
groupadd [options] group_name

# Creates a simple group named desarrolladores
sudo groupadd desarrolladores

# Creates a group with a specific GID
sudo groupadd -g 2000 operaciones

# Creates a system group with GID lower than 1000
sudo groupadd --system servicios_web
# Verifies if the groups were created successfully
grep "desarrolladores\|operaciones\|servicios_web" /etc/group

# Searches for the specified groups using extended regular expressions
grep -E "desarrolladores|operaciones|servicios_web" /etc/group

# Displays the main options and help information for groupadd
groupadd --help
