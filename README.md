# System audit for linux

## what this bash gonna do for you?

> 1. Important information about users
>> * Line 8: Extract all users' usernames from the /etc/passwd file .
>> * Line 9: find all users who use bash terminal .
>> * Line 10: simulate changing user's shell to Zsh .
---
> 2. Coriguration files
>> * Line 17: find all configuration file with the conf. extension in the etc/ folder .
>> * Line 18: calculate the size of the log files in the /var/log folder and find teh 10 largest files .
---
> 3. Access levels
>> * Line 20: taking a backup version from etc/host/ file .
>> * Line 21: changing backup permision level to 600 .
>> * Line 22: Save and document the status of the access levels applied to the backup file .
---
> 4. System status
>> * Line 12: Extract the operating system name and exact Linux kernel version .
>> * Line 13: Specify the processor (CPU) architecture .
>> * Line 14: Get the summary (head and tail) of the system groups file from /etc/group.