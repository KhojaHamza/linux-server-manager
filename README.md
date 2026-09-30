# Linux Server Manager 🐧

A Bash-based command-line tool for monitoring and managing a Linux system.

This project was created as a practical learning project to understand Linux administration, Bash scripting, system monitoring, logs, backups, automation, and Git.

## 🚀 Features

- 🖥️ Display system information
- 📊 Monitor CPU, RAM and disk usage
- ⚙️ Monitor system services
- 👤 Display current user information
- 📋 Analyze system logs and errors
- 💾 Create compressed backups
- ⏰ Automate backups with cron

## 🛠️ Technologies

- Linux
- Bash
- Systemd
- Cron
- Git / GitHub
- Tar / Gzip

## 📁 Project Structure

```text
linux-server-manager/
│
├── server-manager.sh      # Main menu
├── monitor.sh             # System resources and services
├── backup.sh              # Backup system
├── logs.sh                # Log analysis
│
├── config/                # Configuration files
├── backups/               # Generated backups
├── reports/               # Generated reports
├── logs/                  # Project logs
│
├── README.md
└── .gitignore
