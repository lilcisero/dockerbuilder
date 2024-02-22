# here's a simple script you can use to install Docker on a Linux machine (tested on Ubuntu 22.04):
```bash
#!/bin/bash

# Update package lists
sudo apt-get update -y

# Install dependencies
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Add Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update package lists again
sudo apt-get update -y

# Install Docker
sudo apt-get install -y docker-ce

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Verify installation
docker --version
```
Save this script to a file named `install_docker.sh`, make it executable with `chmod +x install_docker.sh`, and then run it with `./install_docker.sh`. This will install the latest version of Docker on your Linux machine.



