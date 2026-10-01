#!/bin/bash

# Colors for terminal alerting
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${CYAN}==================================================${NC}"
echo -e "${GREEN}    Arch Linux Security & Auth Log Monitor        ${NC}"
echo -e "${CYAN}==================================================${NC}\n"

# 1. Check if journalctl is available and query failed sessions
echo -e "${CYAN}[*] Scanning system journal for failed login attempts...${NC}"

# Query journald for failed SSH or user authentication events from today
FAILED_ATTEMPTS=$(journalctl _COMM=sshd -S today --no-pager | grep -i "failed" || true)
FAILED_COUNT=$(echo "$FAILED_ATTEMPTS" | grep -v "^$" | wc -l)

if [ "$FAILED_COUNT" -gt 0 ]; then
    echo -e "${RED}[!] WARNING: Detected $FAILED_COUNT potential brute-force or failed login events today!${NC}"
    echo -e "${YELLOW}--- Recent Failed Authentication Logs ---${NC}"
    echo "$FAILED_ATTEMPTS" | tail -n 10
    echo -e "${YELLOW}-----------------------------------------${NC}"
else
    echo -e "${GREEN}[+] Clean State: No failed authentication attempts detected today.${NC}"
fi

echo -e "\n${CYAN}==================================================${NC}"
