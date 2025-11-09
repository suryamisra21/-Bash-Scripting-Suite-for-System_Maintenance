#!/bin/bash
while true; do
    clear
    echo "=============================="
    echo "Bash System Maintenance Suite"
    echo "=============================="
    echo "1. Backup Files"
    echo "2. Update & Cleanup System"
    echo "3. Monitor Logs"
    echo "4. Exit"
    read -p "Choose an option: " choice

    case $choice in
        1) ./backup.sh ;;
        2) ./update_cleanup.sh ;;
        3) ./monitor_logs.sh ;;
        4) echo "Exiting..."; break ;;
        *) echo "Invalid option!";;
    esac
    read -p "Press Enter to continue..."
done
