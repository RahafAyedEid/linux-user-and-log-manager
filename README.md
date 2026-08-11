#  Linux User Management & Security Log Analyzer

A Bash script designed to automate administrative tasks such as creating system users and scanning security logs for failed login attempts.

##  Features
- **User Management:** Create new system users with home directories with a single prompt.
- **Log Security Analysis:** Scan `/var/log/auth.log` for failed SSH/system login attempts to identify security risks.
- **Interactive CLI:** Simple menu-driven interface for system administrators.

##  How to Run
1. Make the script executable:
   ```bash
   chmod +x manage_server.sh
