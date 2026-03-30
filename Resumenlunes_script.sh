# Updates the package list from repositories
sudo apt update

# Upgrades installed packages to the latest versions
sudo apt upgrade

# Installs the parted tool for disk partition management
sudo apt install parted

# Install numpy python library
pip install numpy

# Show disk partitions, print separator, and list block devices with filesystem info
sudo parted -l && echo -e "\n---\n" && lsblk -f

# Check if system uses UEFI or BIOS
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS"