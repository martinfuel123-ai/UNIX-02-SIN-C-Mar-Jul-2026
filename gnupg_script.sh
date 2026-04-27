# This command lists your private GPG keys
gpg --list-secret-keys --keyid-format=long

# This is my backup of my private GPG key
gpg --armor --export-secret-keys EACB56901165A8B5 > private.key

# Export my public key
gpg --armor --export martinfuel123@gmail.com > jt_public_key.asc

# Import my friend's public key
gpg --import micompa-public-key.asc

# Check the keys you have (public keys)
gpg --list-keys

# Send a message in a file (plain text)
echo "message is secret hello Rafael, I am Jose Martin" > doc_unencrypted.txt

# View the message
cat doc_unencrypted.txt

# Copy your friend's key ID or fingerprint
gpg --list-keys

# Encrypt the document for your friend using their key
gpg --output doc_encrypted.txt --encrypt --recipient "Rafael Patin" doc_unencrypted.txt

# View the encrypted document
cat doc_encrypted.txt

# Decrypt the message from my friend
gpg --decrypt doc_encrypted_by_patin.txt

# Sign file in clear text format
gpg --clearsign doc_no_cifrado.txt

# Sign file in binary format
gpg --sign doc_no_cifrado.txt

# Create detached signature
gpg --detach-sign doc_no_cifrado.txt

# Verify clear signed file
gpg --verify doc_no_cifrado.txt.asc

# Verify binary signed file
gpg --verify doc_no_cifrado.txt.gpg

# Verify detached signature
gpg --verify doc_no_cifrado.txt.sig doc_no_cifrado.txt

# Verify partner clear signed file
gpg --verify doc_no_cifradocompa.txt.asc

# Verify partner binary signed file
gpg --verify doc_no_cifradocompa.txt.gpg

# Verify partner detached signature
gpg --verify doc_no_cifradocompa.txt.sig doc_no_cifrado.txt

# Edit partner's public key to set trust level
gpg --edit-key 59DBC071624FB8E623E65A8A678FEA3F7A530BBB

# Sign partner's public key
gpg --sign-key 59DBC071624FB8E623E65A8A678FEA3F7A530BBB

# Verify partner's clearsigned file again after trust assignment
gpg --verify doc_no_cifradocompa.txt.asc

# Verify partner's binary signed file again after trust assignment
gpg --verify doc_no_cifradocompa.txt.gpg

# Verify partner detached signature after assigning trust
gpg --verify doc_no_cifradocompa.txt.sig doc_no_cifradocompa.txt

ls -a y ls --all hacen lo mismo: muestran todos los archivos, incluyendo los ocultos (los que empiezan con .).

# List all files including hidden ones
ls -a

# Same as above using long option
ls --all

# Commit changes with a short message
git commit -m "Explain ls -a and ls --all usage"

# List files in long format, including hidden files and human-readable sizes
ls -l -a -h

# Same as above, shorter version
ls -l -ah

# Shortest combined form
ls -lah

# Commit changes with a short message
git commit -m "Add examples of ls -l -a -h, ls -l -ah and ls -lah"

# Create a directory
mkdir test_folder

# Remove an empty directory
rmdir test_folder

# ls help shows quick options for the command
ls --help

# man ls opens the full manual page for ls
man ls

# Inside the manual:

# /all  search forward for "all"
# n     go to next result
# N     go back to previous result

# Show manual page for git clone
man git-clone

#--depth <depth>
#Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless --no-single-branch is given to fetch the
#histories near the tips of all branches. If you want to clone submodules shallowly, also pass --shallow-submodules.

#1 codespace root    47 Apr 17 14:16 doc_no_cifrado.txt

# ls -l output explanation

permissions and type = file permissions (read, write, execute rules)
user = codespace (file owner)
group = root (group owner)
size = 47 bytes (file size)
date and time = Apr 17 14:16 (last modification time)
file name = doc_no_cifrado.txt

# Give execute permission to all (user, group, others)
chmod +x script.sh
ls -l
# result: -rwxrwxrwx

# Add execute permission to user (already had it, so no change)
chmod u+x script.sh
ls -l
# result: -rwxrwxrwx

# Remove read permission from others
chmod o-r secreto.txt
ls -l
# result: -rw-rw--w-

# Set user read/write and remove all permissions from group and others
chmod u+rw,go-rwx privado
ls -l
# result: -rw-rw--w-

#It doesn't work because superuser permissions were not given correctly
sudo echo "hola" > /etc/archivo_protegio 

#Writes text to a root-owned file using sudo tee to bypass permission errors caused by standard shell redirection.

echo "hola" | sudo tee /etc/archivo_protegido > /dev/null

#Writes the input to a protected file with root privileges while simultaneously displaying the output in the terminal.

echo "hola" | sudo tee /etc/archivo_protegido
#Starts a subshell with root privileges to append text to a protected file, ensuring the redirection operator also has superuser permissions.
sudo sh -c 'echo "chao" >> /etc/archivo_protegido'

#We temporarily enter superuser mode and to exit it is with the command exit

sudo -i
#Displays the path to the current user's home directory by evaluating the variable (Double quotes allow interpolation).
echo "$HOME"

#Displays the literal text "$HOME" without evaluating the variable (Single quotes prevent interpolation).

echo '$HOME'
#Displays the absolute path to the current Bash shell executable being used by the system.
echo $BASH

#Creates a new file named hola.sh and writes the shebang line to specify the script should be executed using the Bourne shell.

echo '#!/bin/sh' > hola.sh

#Appends an echo command to the end of hola.sh, which will display a message when the script is run.

echo 'echo "Hola desde mi primer script"' >> hola.sh

#Displays the full content of the hola.sh file in the terminal to verify the script's structure.

cat hola.sh

#Lists the file details to check current permissions, owner, and size.
ls -l hola.sh
#Grants execution permissions to the file, making it an executable script.
chmod +x hola.sh
#Attempts to run the script. It fails with "required file not found" because of the typo in the shebang line (#!/bim/sh instead of #!/bin/sh).
./hola.sh
#Lists the contents of the system configuration directory; typically readable by all users without elevated privileges.
ls /etc
#Uses sudo to create an empty file in a restricted system path where standard users do not have write access.
sudo touch /etc/prube.txt
#Creates a new directory within the user's home folder, which does not require root permissions.
mkdir ~/mi_carpeta
#Invokes superuser privileges to interact with the package manager and install new software onto the system.
sudo apt install cowsay
#Creates an empty file named prueba.txt in the current directory.
touch prueba.txt
#Restricts permissions so only the owner can read and write to the file (no permissions for group or others).
chmod 600 prueba.txt

#Lists file details. The previous attempts failed because a space was inserted between "prueba" and ".txt", causing the system to look for two non-existent files.
ls -l prueba.txt
#Changes permissions to allow the owner to read, write, and execute, while others can only read and execute.
chmod 755 prueba.txt

# Displays the current file creation mask, which defines default permissions for new files.
umask

# Updates the package list from the repositories to get the latest available versions.
sudo apt update

# Installs the ACL (Access Control List) package to manage advanced file permissions.
sudo apt-get install acl

# Changes ownership of all files in the current directory to the current user.
sudo chown -R $(whoami) .

# Upgrades all installed packages to their latest available versions.
sudo apt upgrade

# Sets a stricter default permission mask (files: 640, directories: 750)
umask 027

# Creates an empty file named "archivo2"
touch archivo2

# Creates a new directory named "directorio2"
mkdir directorio2

# Lists files with detailed information (permissions, owner, size, etc.)
ls -l
# Sets a very restrictive default permission mask (files: 600, directories: 700)
umask 077

# Creates an empty file named "secreto.txt"
touch secreto.txt

# Creates a directory named "privado"
mkdir privado

# Lists files with detailed information (permissions, owner, size, etc.)
ls -l