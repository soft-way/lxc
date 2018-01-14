echo "postrm"

# not sure what this does...
%systemd_postun_with_restart lxd.service

gpasswd -d nova lxd
userdel lxd


