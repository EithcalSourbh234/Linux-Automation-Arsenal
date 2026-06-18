#!/bin/bash

# ==============================================================================
# TOOL NAME   : Recon Automation Arsenal
# AUTHOR      : Sourbh Kumar
# DESCRIPTION : Automated network reconnaissance and evidence logging utility.
# VERSION     : 1.0
# ==============================================================================

# Clear terminal screen to maximize interface readability
clear

# STEP 1: Display Professional Tool Banner
echo "====================================================="
echo "        🎯 AUTOMATED NETWORK RECONNAISSANCE 🎯       "
echo "====================================================="
echo ""

# STEP 2: Interactive Target Acquisition
read -p "[?] Enter Target IP Address or Domain Name: " target

# STEP 3: Input Validation and Sanitization (Fail-Safe Guard)
if [ -z "$target" ]; then
    echo "❌ [ERROR] Target field cannot be empty. Terminating execution."
    exit 1
fi

echo "🚀 [INFO] Target successfully locked onto: $target"
echo ""

# STEP 4: Automated Output Directory Verification
output_dir="Recon_Reports"
mkdir -p "$output_dir"

# STEP 5: Dynamic Log File Generation
output_file="$output_dir/${target}_report.txt"

echo "[*] [INFO] Initializing structured logging environment..."
echo "[*] [INFO] Target evidence report locked at: $output_file"
echo ""

# STEP 6: Initialize Log File and Inject System Metadata
echo "=====================================================" > "$output_file"
echo "🕵️ SYSTEM RECON EVIDENCE REPORT FOR: $target" >> "$output_file"
echo "📅 GENERATED TIMESTAMP             : $(date)" >> "$output_file"
echo "=====================================================" >> "$output_file"

echo "✅ [SUCCESS] Logging channel initialized. Deploying scanner payload."
echo ""

# ==============================================================================
# MODULE: AUTOMATED NMAP RECONNAISSANCE PAYLOADS
# ==============================================================================

# STEP 7: Fast Port Scan Execution (Top 100 common ports)
echo "[+] [SCAN] Running high-speed target port discovery..."
echo -e "\n--- STAGE 1: FAST PORT SCAN DISCOVERY ---" >> "$output_file"
nmap -F "$target" >> "$output_file"

# STEP 8: Intensive Service Version Detection (Top 20 common ports)
echo "[+] [SCAN] Executing deeper service detection and banner grabbing..."
echo -e "\n--- STAGE 2: SERVICE VERSION DETECTION & BANNER GRABBING ---" >> "$output_file"
nmap -sV --top-ports 20 "$target" >> "$output_file"

# STEP 9: Finalization and Summary
echo ""
echo "====================================================="
echo "✅ [SUCCESS] Scan sequence completed successfully."
echo "[*] [INFO] Comprehensive recon report saved to: $output_file"
echo "====================================================="
