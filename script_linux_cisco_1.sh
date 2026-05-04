#Lists contents of the Documents directory
ls Documents
#Runs aptitude with a special argument (Easter egg)
aptitude moo
#Runs aptitude with verbose option
aptitude -v moo
#Runs aptitude with increased verbosity
aptitude -vv moo
#Runs aptitude with maximum verbosity
aptitude -vvv moo
#Moves to home directory
cd ~
#Prints current working directory
pwd 
#Moves to parent directory
cd ..
#Returns safely to home
cd ~
#Lists files with details
ls -l
#Lists files in reverse order
ls -r
#Combines options
ls -lr
#Sorts files by time in /tmp
ls -lt /tmp
#Sorts files by size
ls -lS /tmp
#Reverse order
ls -lr /tmp
#Creates a file
touch file1.txt
#Copies file
cp file1.txt file2.txt
#Verifies files
ls
#Stages files
git add .
#Writes content into file
echo "Hello World" > file1.txt
#Displays file content
cat file1.txt
#Shows first lines
head file1.txt
#Shows last lines
tail file1.txt
#Adds execute permission
chmod u+x file1.txt
#Verifies permissions
ls -l
#Changes file owner to root
sudo chown root file1.txt
#Verifies owner
ls -l
#Copies system file (safe and accessible)
cp /etc/hosts .
#Verifies copy
ls
#Creates a 1MB file (safe version)
dd if=/dev/zero of=sample.bin bs=1M count=1
