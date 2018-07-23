# Display current swap partition
sudo swapon --show
free -h

# Create swap partition using gparted for example

# Activate a partition as swap
sudo swapon /dev/sda3

# Add it to /etc/fstab to make it permanent I guess


