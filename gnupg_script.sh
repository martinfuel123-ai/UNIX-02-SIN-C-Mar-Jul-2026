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