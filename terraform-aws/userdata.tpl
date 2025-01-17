#!/bin/bash
sudo hostnamectl set-hostname ${nodename} &&
curl -sfL https://get.k3s.io | sh -s - server \
    --datastore-endpoint="mysql://${dbuser}:${dbpassword}@tcp(${db_endpoint})/${dbname}" \
    --write-kubeconfig-mode 644 \
    --tls-san=$(curl http://ifconfig.me) \
    --token="th1s1sat0k3n!"
