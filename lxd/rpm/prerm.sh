echo "prerm"

# non standard stuff, stop the service asap
systemctl stop lxd.service

# unregister the service
%systemd_preun lxd.service


