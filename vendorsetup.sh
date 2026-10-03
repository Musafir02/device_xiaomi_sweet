#!/bin/bash

# KernelSU And NoMount Integration
KERNEL_DIR="kernel/xiaomi/sm6150"

# Terminal Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m'

# Check Kernel Directory
if [ ! -d "$KERNEL_DIR" ]; then
    echo -e "${RED}[!] Kernel directory not found: $KERNEL_DIR${NC}"
    exit 1
fi

# KernelSU Integration
echo -e "\n${CYAN}--- KernelSU Integration ---${NC}"
echo -e "${GREEN}[+] Integrating KernelSU...${NC}"
pushd "$KERNEL_DIR" > /dev/null || exit 1
curl -LSs "https://raw.githubusercontent.com/manipvlator/KernelSU/refs/heads/main/kernel/setup.sh" | bash -s main
popd > /dev/null || exit 1

# NoMount Integration
echo -e "\n${CYAN}--- NoMount Integration ---${NC}"
echo -e "${GREEN}[+] Integrating NoMount...${NC}"
pushd "$KERNEL_DIR" > /dev/null || exit 1
curl -LSs "https://raw.githubusercontent.com/maxsteeel/nomount/refs/heads/dev/kernel/setup.sh" | bash -
popd > /dev/null || exit 1

echo -e "\n${CYAN}-----------------------------${NC}"
echo -e "${GREEN}[+] Kernel integration completed!${NC}"
echo -e "${CYAN}-----------------------------${NC}"
