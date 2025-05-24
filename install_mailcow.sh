#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Starting Mailcow installation...${NC}"

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo -e "${RED}Git is not installed. Installing git...${NC}"
    if [ -f /etc/debian_version ]; then
        sudo apt-get update
        sudo apt-get install -y git
    elif [ -f /etc/redhat-release ]; then
        sudo yum install -y git
    else
        echo -e "${RED}Unsupported distribution. Please install git manually.${NC}"
        exit 1
    fi
fi

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo -e "${RED}Docker is not installed. Installing Docker...${NC}"
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    sudo usermod -aG docker $USER
    rm get-docker.sh
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo -e "${RED}Docker Compose is not installed. Installing Docker Compose...${NC}"
    sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi

# Clone Mailcow repository
echo -e "${GREEN}Cloning Mailcow repository...${NC}"
git clone https://github.com/mailcow/mailcow-dockerized
cd mailcow-dockerized

# Generate configuration
echo -e "${GREEN}Generating Mailcow configuration...${NC}"
./generate_config.sh

# Start Mailcow
echo -e "${GREEN}Starting Mailcow...${NC}"
docker-compose pull
docker-compose up -d

echo -e "${GREEN}Mailcow installation completed!${NC}"
echo -e "${GREEN}You can access the Mailcow UI at: https://$(hostname)${NC}"
echo -e "${GREEN}Default login credentials:${NC}"
echo -e "${GREEN}Username: admin${NC}"
echo -e "${GREEN}Password: moohoo${NC}"
echo -e "${RED}Please change the default password after first login!${NC}" 