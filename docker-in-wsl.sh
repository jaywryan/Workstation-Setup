#WSL Setup - Ubuntu 18.04

# Create User name and password

# Install and configure docker to work with docker-for-windows https://nickjanetakis.com/blog/setting-up-docker-for-windows-and-wsl-to-work-flawlessly

sudo apt update

sudo apt --yes install \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
    curl \
    jq

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt update

sudo apt --yes install docker-ce

sudo usermod --append --groups docker $USER