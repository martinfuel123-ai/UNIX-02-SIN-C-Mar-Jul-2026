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
# Displays the GID ranges configured in the system
grep "GID_MIN\|GID_MAX\|SYS_GID" /etc/login.defs
# Creates a group named diseño using addgroup
addgroup diseño

# Creates a group with a specific GID
addgroup --gid 2100 marketing

# Creates a system group named cache_web
addgroup --system cache_web

# Verifies that the groups were created successfully
grep "diseño\|marketing\|cache_web" /etc/group# Creates a group named diseño using addgroup
addgroup diseño

# Creates a group with a specific GID
addgroup --gid 2100 marketing

# Creates a system group named cache_web
addgroup --system cache_web

# Verifies that the groups were created successfully
grep "diseño\|marketing\|cache_web" /etc/group

# Append current user to the "desarrolladores" group (-aG keeps existing group memberships)
sudo usermod -aG desarrolladores $USER

# Append current user to the "diseno" group (-aG ensures non-destructive group addition)
sudo usermod -aG diseno $USER
# Displays the groups the current user belongs to
groups

# Displays user ID (UID), group ID (GID), and all associated groups
id
# Searches for the "desarrolladores" and "diseno" groups inside the /etc/group file
grep "desarrolladores\|diseno" /etc/group
# Displays the current user's UID, GID, and group memberships
id $USER

# Searches for the current user inside the /etc/group file
grep $USER /etc/group
# Attempts to add the current user to the "root" and "marketing" groups using adduser
adduser $USER root marketing
# Searches for the "root" group entry inside the /etc/group file
grep root /etc/group
# Creates a new group named "grupo_temporal"
groupadd grupo_temporal

# Adds the root user to the "grupo_temporal" group without removing existing group memberships
usermod -aG grupo_temporal root
# Displays the current user's UID, GID, and group memberships
id $USER
# Sets "desarrolladores" as the primary supplementary group list for the root user
usermod -G desarrolladores root

# Displays the UID, GID, and group memberships of the root user
id root
# Adds the root user to the "diseno", "marketing", and "grupo_temporal" groups without removing existing memberships
usermod -aG diseno,marketing,grupo_temporal root

# Displays the UID, GID, and group memberships of the root user
id root
# Creates the proyectos, reportes, and scripts directories inside ~/lab_chgrp
mkdir -p ~/lab_chgrp/{proyectos,reportes,scripts}

# Creates the app.py file inside the proyectos directory
touch ~/lab_chgrp/proyectos/app.py

# Creates the config.json file inside the proyectos directory
touch ~/lab_chgrp/proyectos/config.json

# Creates the informe.txt file inside the reportes directory
touch ~/lab_chgrp/reportes/informe.txt

# Creates the deploy.sh file inside the scripts directory
touch ~/lab_chgrp/scripts/deploy.sh