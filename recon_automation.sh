#!/bin/bash

# =========================================================
# TOOL NAME : Recon Automation Arsenal (Basic)
# AUTHOR    : Sourbh Kumar
# PURPOSE   : Automating initial Nmap scans for networks
# =========================================================

# Clear screen for a professional feel
clear

# Step 1: Tool Banner Display
echo "====================================================="
echo "        🎯 AUTOMATED NETWORK RECONNAISSANCE 🎯       "
echo "====================================================="
echo ""

# Step 2: Interactive Target Gathering
read -p "[?] Enter Target IP Address or Domain Name: " target

# Step 3: Input Verification Check
if [ -z "$target" ]; then
    echo "❌ ERROR: Target field cannot be empty. Exiting script."
    exit 1
fi

echo "🚀 Target locked on: $target"
