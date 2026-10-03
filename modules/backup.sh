#!/bin/bash

BACKUP_DIR="$HOME/linux-server-manager/backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

tar -czf "$BACKUP_DIR/server-manager-$DATE.tar.gz" \
server-manager.sh \
monitor.sh \
backup.sh \
logs.sh \
config \
reports \
logs

echo "Backup created successfully!"
