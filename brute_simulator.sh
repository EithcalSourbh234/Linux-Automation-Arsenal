#!/bin/bash

attempts=1
max_attempts=3

echo "======================================="
echo "         SECURE PORTAL LOGIN           "
echo "======================================="

while [ $attempts -le $max_attempts ]
do
    echo "Attempt $attempts: Enter your password:"
    read -s password
    echo ""

    if [ "$password" == "admin123" ]; then
        echo "✅ Success! Access Granted."
        exit 0
    else
        echo "❌ Incorrect password. Try again."
        echo "---------------------------------------"
        ((attempts++))
    fi
done

echo "🚨 ALERT: 3 Failed Attempts! Account is now LOCKED."
