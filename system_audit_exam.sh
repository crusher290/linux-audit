#!/bin/bash


mkdir -p ~/exam_results/audit
touch ~/exam_results/audit/notes.txt
pwd > ~/exam_results/audit/cwd.txt

cut -d ':' -f 1 /etc/passwd > ~/exam_results/audit/users.txt
grep /bin/bash /etc/passwd > ~/exam_results/audit/bash_users.txt
sed 's#/bin/bash#/usr/bin/zsh#' /etc/passwd | head -n 5 > ~/exam_results/audit/shell_preview.txt

uname -vs > ~/exam_results/audit/sysinfo.txt
arch >> ~/exam_results/audit/sysinfo.txt
head -n 3 /etc/group > ~/exam_results/audit/group_summary.txt
tail -n 2 /etc/group >> ~/exam_results/audit/group_summary.txt

find /etc -name '*.conf' > ~/exam_results/audit/conf_files.txt
du -ah /var/log |head -n 10 |sort -r > ~/exam_results/audit/top_files.txt

cp /etc/hosts ~/exam_results/audit/hosts.bak
chmod 600 ~/exam_results/audit/hosts.bak
ls -l ~/exam_results/audit/hosts.bak > ~/exam_results/audit/hosts_perm.txt

find ~/exam_results/audit -name '*.txt' -type f ! -name 'hosts_perm.txt' ! -name 'notes.txt' -delete



