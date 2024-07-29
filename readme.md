# Linux and Bash Scripting Notes

## Table of Contents

- [Linux Note](linux_notes#linux-note)
  - [1. Basics](linux_notes#1-basics)
    - [Basic Commands](linux_notes#basic-commands)
    - [Viewing Files](linux_notes#viewing-files)
      - [Finding the head and tail of a file](linux_notes#finding-the-head-and-tail-of-a-file)
      - [Numbering the lines of a file](linux_notes#numbering-the-lines-of-a-file)
      - [`more` and `less` commands](linux_notes#more-and-less-commands)
    - [Find Files and Directories](linux_notes#find-files-and-directories)
      - [`Locate` Command](linux_notes#locate-command)
      - [Find Binaries using `whereis`](linux_notes#find-binaries-using-whereis)
      - [Find Binaries in PATH using `which`](linux_notes#find-binaries-in-path-using-which)
      - [`find` Command](linux_notes#find-command)
      - [`grep` Command](linux_notes#grep-command)
      - [`sed` Command to find and replace](linux_notes#sed-command-to-find-and-replace)
  - [2. Analyzing and Managing Networks](linux_notes#2-analyzing-and-managing-networks)
    - [Changing Network Information](linux_notes#changing-network-information)
      - [Changing IP Address](linux_notes#changing-ip-address)
      - [Changing Netmask and Broadcast Address](linux_notes#changing-netmask-and-broadcast-address)
      - [Spoofing MAC Address](linux_notes#spoofing-mac-address)
      - [Assign new IP to DHCP Client](linux_notes#assign-new-ip-to-dhcp-client)
    - [Manipulating DNS](linux_notes#manipulating-dns)
      - [`dig` Command](linux_notes#dig-command)
      - [Change DNS Server](linux_notes#change-dns-server)
      - [Mappping own IP Address](linux_notes#mappping-own-ip-address)
  - [3. File and Directory Permissions](linux_notes#3-file-and-directory-permissions)
    - [Granting Permission](linux_notes#granting-permission)
      - [Three Levels of Permission](linux_notes#three-levels-of-permission)
      - [Change Ownership - `chown`](linux_notes#change-ownership---chown)
      - [Change Group Ownership - `chgrp`](linux_notes#change-group-ownership---chgrp)
      - [check permission](linux_notes#check-permission)
    - [Changing Permission](linux_notes#changing-permission)
      - [using decimal notaion](linux_notes#using-decimal-notaion)
      - [Changing Permission with UGO](linux_notes#changing-permission-with-ugo)
      - [Setting permission with Masks](linux_notes#setting-permission-with-masks)
    - [Special Permission](linux_notes#special-permission)
    - [Users and Groups permissions using `Visudo`](linux_notes#users-and-groups-permissions-using-visudo)
      - [Adding User to Group](linux_notes#adding-user-to-group)
      - [Add a new user](linux_notes#add-a-new-user)
      - [Delete a user](linux_notes#delete-a-user)
      - [Switch User](linux_notes#switch-user)
      - [Sudoers File](linux_notes#sudoers-file)
      - [Create a new group](linux_notes#create-a-new-group)
  - [4. Process Management](linux_notes#4-process-management)
    - [Viewing Process](linux_notes#viewing-process)
    - [Managing Process](linux_notes#managing-process)
      - [Change Process Priority with `nice` and `renice`](linux_notes#change-process-priority-with-nice-and-renice)
      - [Killing Process](linux_notes#killing-process)
      - [Running Process in Background](linux_notes#running-process-in-background)
      - [Running Process in Foreground](linux_notes#running-process-in-foreground)
    - [Scheduling Process](linux_notes#scheduling-process)
      - [`at` Command](linux_notes#at-command)
    - [Ram Usage](linux_notes#ram-usage)
      - [`free` Command](linux_notes#free-command)
  - [5. User Environment Variables](linux_notes#5-user-environment-variables)
    - [viewing Environment Variables](linux_notes#viewing-environment-variables)
      - [default environment variables](linux_notes#default-environment-variables)
      - [Viewing all environment variables](linux_notes#viewing-all-environment-variables)
      - [Changing Variable for a session](linux_notes#changing-variable-for-a-session)
      - [Changing Variable Permanently](linux_notes#changing-variable-permanently)
    - [Changing PATH](linux_notes#changing-path)
      - [Adding to the PATH Variable](linux_notes#adding-to-the-path-variable)
      - [Create a user defined variable](linux_notes#create-a-user-defined-variable)
  - [6. Compressing and Archiving Files](linux_notes#6-compressing-and-archiving-files)
    - [Taring Files](linux_notes#taring-files)
    - [Compressing Files](linux_notes#compressing-files)
      - [Gzip](linux_notes#gzip)
      - [Bzip2](linux_notes#bzip2)
      - [Compress](linux_notes#compress)
    - [Create Physical Copy of Storage](linux_notes#create-physical-copy-of-storage)
      - [`dd` Command](linux_notes#dd-command)
  - [7. File System Management](linux_notes#7-file-system-management)
    - [Linux Device Naming System](linux_notes#linux-device-naming-system)
    - [Device Partitioning](linux_notes#device-partitioning)
      - [`fdisk` Command](linux_notes#fdisk-command)
      - [Character and Block Devices](linux_notes#character-and-block-devices)
    - [Mounting and Unmounting File Systems](linux_notes#mounting-and-unmounting-file-systems)
    - [Monitoring FileSystem](linux_notes#monitoring-filesystem)
      - [`df` Command](linux_notes#df-command)
      - [Checking for Errors : `fsck`](linux_notes#checking-for-errors--fsck)
    - [Disk Usage](linux_notes#disk-usage)
      - [`du` Command](linux_notes#du-command)
  - [8. Logging System](linux_notes#8-logging-system)
    - [rsyslog Logging Daemon](linux_notes#rsyslog-logging-daemon)
      - [rsyslog logging rules](linux_notes#rsyslog-logging-rules)
      - [Cleaning Up Logs with `logrotate`](linux_notes#cleaning-up-logs-with-logrotate)
    - [Remaining Stealthy](linux_notes#remaining-stealthy)
      - [`shred` Command](linux_notes#shred-command)
      - [Disabling Logging](linux_notes#disabling-logging)
      - [Delete Bash History](linux_notes#delete-bash-history)
  - [9. Linux Services](linux_notes#9-linux-services)
    - [Start, Stop and Restart Services](linux_notes#start-stop-and-restart-services)
      - [`service` Command](linux_notes#service-command)
    - [view all services](linux_notes#view-all-services)
    - [MySQL Service](linux_notes#mysql-service)
      - [Starting MySQL Service](linux_notes#starting-mysql-service)
      - [Authentication](linux_notes#authentication)
      - [Setting Password](linux_notes#setting-password)
      - [Accessing Remote MySQL](linux_notes#accessing-remote-mysql)
      - [Connecting to MySQL Database](linux_notes#connecting-to-mysql-database)
      - [Database Table](linux_notes#database-table)
      - [Data Manipulation](linux_notes#data-manipulation)
    - [Postgres with Metasploit](linux_notes#postgres-with-metasploit)
    - [Apache Web Server](linux_notes#apache-web-server)
    - [SSH Service](linux_notes#ssh-service)
    - [Start and Stop Services at Boot](linux_notes#start-and-stop-services-at-boot)
    - [reload entire systemd daemon](linux_notes#reload-entire-systemd-daemon)
  - [10. Linux Security](linux_notes#10-linux-security)
    - [traceroute](linux_notes#traceroute)
    - [The Onion Router (Tor)](linux_notes#the-onion-router-tor)
      - [Verify Signature after Download](linux_notes#verify-signature-after-download)
    - [Proxy Chains](linux_notes#proxy-chains)
      - [Setting up Proxy Chains](linux_notes#setting-up-proxy-chains)
      - [Dynamic Chainning](linux_notes#dynamic-chainning)
      - [Random Chainning](linux_notes#random-chainning)
  - [11. Linux Kernel Management and Enumeration](linux_notes#11-linux-kernel-management-and-enumeration)
    - [Checking Kernel Version](linux_notes#checking-kernel-version)
    - [Kernel Tuning with `sysctl`](linux_notes#kernel-tuning-with-sysctl)
    - [Managing Kernel Modules](linux_notes#managing-kernel-modules)
      - [insmod Suite](linux_notes#insmod-suite)
      - [modprobe Command](linux_notes#modprobe-command)
    - [Check CPU Information](linux_notes#check-cpu-information)
  - [12. Job Scheduling](linux_notes#12-job-scheduling)
    - [Cron Jobs](linux_notes#cron-jobs)
      - [Scheduling a backup job](linux_notes#scheduling-a-backup-job)
      - [Crontab shortcuts](linux_notes#crontab-shortcuts)
    - [rc Scripts](linux_notes#rc-scripts)
      - [Linux Run Levels](linux_notes#linux-run-levels)
      - [Adding a Service to rc.d](linux_notes#adding-a-service-to-rcd)
      - [Add service via GUI: rcconf](linux_notes#add-service-via-gui-rcconf)
  - [13. SSH and SSH Security](linux_notes#13-ssh-and-ssh-security)
    - [Connecting to SSH Server](linux_notes#connecting-to-ssh-server)
    - [Disable Root Login](linux_notes#disable-root-login)
    - [Lock Password for Root](linux_notes#lock-password-for-root)
    - [Login through SSH Key](linux_notes#login-through-ssh-key)
    - [Disable Password Authentication](linux_notes#disable-password-authentication)
    - [Protect ssh private key](linux_notes#protect-ssh-private-key)
    - [`scp` uitility](linux_notes#scp-uitility)
    - [SSH Brute Force Protection with `fail2ban`](linux_notes#ssh-brute-force-protection-with-fail2ban)
  - [14. Linux Firewall](linux_notes#14-linux-firewall)
    - [IPTables](linux_notes#iptables)
    - [UFW (Uncomplicated Firewall)](linux_notes#ufw-uncomplicated-firewall)
  - [15. Other Tools](linux_notes#15-other-tools)
    - [`Curl`](linux_notes#curl)
    - [Web Search From Terminal using ZSH](linux_notes#web-search-from-terminal-using-zsh)
  - [16. Bash Scripting](linux_notes#16-bash-scripting)
