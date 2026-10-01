#!/bin/bash

# Colors for terminal output
BLUE='\033[0;34m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${BLUE}========================================${NC}"
echo -e "${GREEN}   Arch Linux System Health Dashboard   ${NC}"
echo -e "${BLUE}========================================${NC}\n"

# 1. Kernel & OS Info
echo -e "${CYAN}[*] Operating System & Kernel:${NC}"
uname -sr
cat /etc/arch-release
echo ""

# 2. Uptime
echo -e "${CYAN}[*] System Uptime:${NC}"
uptime -p
echo ""

# 3. Memory Usage
echo -e "${CYAN}[*] Memory Usage:${NC}"
free -h
echo ""

# 4. Disk Space
echo -e "${CYAN}[*] Disk Space (Root Partition):${NC}"
df -h /
echo ""

# 5. Installed Packages Count
echo -e "${CYAN}[*] Total Installed Packages (pacman):${NC}"
pacman -Q | wc -l
echo -e "\n${BLUE}========================================${NC}"
