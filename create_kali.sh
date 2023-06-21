#!/bin/bash


# Création du container
echo "Création en cours ..."
pct create 200 /var/lib/vz/template/cache/debian-11-standard_11.6-1_amd64.tar.zst --hostname Kali --memory 512 --net0 name=eth0,bridge=vmbr0,gw=192.168.3.2,ip=192.168.3.110/24, --storage local-lvm --start 1 --ssh-public-keys /root/.ssh/authorized_keys --unprivileged 1 --features nesting=1  --password Password --nameserver 192.168.3.2 > /dev/null
echo "Création terminée, Container en démarrage"
pct push 200 /root/scripts/kali/setup_kali.sh root/setup_kali.sh
pct exec 200 chmod +x /root/setup_kali.sh
pct exec 200 /root/setup_kali.sh
echo "Terminé"
echo " Les Services ont été installés ! "
