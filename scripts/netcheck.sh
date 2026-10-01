#!/bin/bash

# Colors for terminal output
GREEN='\033[0;32m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${CYAN}=== Arch Linux Network & Tethering Diagnostic ===${NC}\n"

# 1. Check nmcli device status
echo -e "${GREEN}[*] Checking Network Devices:${NC}"
nmcli device status
echo ""

# 2. Check active connections
echo -e "${GREEN}[*] Active Connections:${NC}"
nmcli connection show --active
echo ""

# 3. Test Internet Connectivity & Ping Latency
echo -e "${GREEN}[*] Testing Internet Connectivity (pinging 8.8.8.8):${NC}"
if ping -c 3 8.8.8.8 &> /dev/null; then
    echo -e "${GREEN}Status: Online (Connection is stable)${NC}"
else
    echo -e "${RED}Status: Offline / No Internet Access${NC}"
fi

echo -e "\n${CYAN}=== Diagnostic Complete ===${NC}"
