echo "postinst"

# add a group
/usr/bin/getent group lxd || /usr/sbin/groupadd -g 119 -r lxd

# add an user
/usr/bin/getent passwd lxd || /usr/sbin/useradd lxd -g lxd --system --no-create-home --home /nonexistent

# register service
%systemd_post lxd.service

# non standard stuff, start the service asap
#systemctl start lxd.service

mkdir -p /var/log/lxd
usermod -G lxd -a nova

