#!/bin/bash

# ============================================
# Linux User Management & Security Log Analyzer
# ============================================

echo "=================================="
echo "    Linux Management Tool"
echo "=================================="
echo "1) Create New User"
echo "2) Scan Security Logs (Failed Logins)"
echo "3) Exit"
echo "=================================="

read -p "Select an option (1-3): " CHOICE

case $CHOICE in
    1)
        read -p "Enter new username: " NEW_USER
        sudo useradd -m $NEW_USER
        echo "✅ User $NEW_USER created successfully!"
        ;;
    2)
        echo "🔍 Scanning security logs..."
        echo "----------------------------------"
        grep -i "failed" /var/log/auth.log 2>/dev/null || echo "No failed attempts found or needs root permissions."
        echo "----------------------------------"
        echo "✅ Scan completed."
        ;;
    3)
        echo "👋 Exiting program."
        exit 0
        ;;
    *)
        echo "❌ Invalid option!"
        ;;
esac
