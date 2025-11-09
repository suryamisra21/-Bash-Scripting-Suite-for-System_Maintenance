log_file="$HOME/Desktop/system_maintenance.log"
{
    echo "[$(date)] Starting maintenance tasks..."
    ./backup.sh
    ./update_cleanup.sh
    ./monitor_logs.sh
    echo "[$(date)] Maintenance completed."
} >> "$log_file" 2>&1

