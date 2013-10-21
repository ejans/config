# About
These are my personal configuration files

# Usage
clone this file inside `~/Documents`.
To automate download and install run the `autoInstall.sh` script inside the scripts folder.
This will install, get and make/install all files.

# SSD usage

Install a fresh Ubuntu server edition on only one partition without lvm.
eddit `/etc/fstab` to look like this:

```
UUID=	/	ext4	noatime,errors=remount-ro,discard	0	1
tmpfs	/tmp	tmpfs	defaults,noatime,mode=1777		0	0
tmpfs	/var/spool	tmpfs	defaults,noatime,mode=1777	0	0
tmpfs	/var/tmp	tmpfs	defaults,noatime,mode=1777	0	0
tmpfs	/var/log	tmpfs	defaults,noatime,mode=0755	0	0
tmpfs	/var/log/apt	tmpfs	defaults,noatime		0	0
tmpfs	/var/log/apache2	tmpfs	defaults,noatime	0	0
```

The `fstrim` command is not necessary because we use discard.
