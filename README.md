# Exercise: running systemd in Amazon Linux 2 or Amazon Linux 2022

This exercise shows how systemd can be run inside an Amazon Linux 2 or
Amazon Linux 2022 container.


### CGroups

Systemd in Amazon Linux 2 relies on cgroups v1. A lot of newer Linux
distributions are now shipping with cgroups v2 enabled. To [enable
cgroups v1][1], the kernel parameter `systemd.unified_cgroup_hierarchy=0`
should be set. After rebooting, `/sys/fs/cgroup` should be mounted as a
tmpfs.


[1]: https://wiki.archlinux.org/title/Cgroups#Enable_cgroup_v1
