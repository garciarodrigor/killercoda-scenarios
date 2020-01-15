#!/bin/sh

MASTER_IP=$(hostname -I | awk '{print $1}')

ssh-keyscan -H node01 >> ~/.ssh/known_hosts

curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.0.1 K3S_CLUSTER_SECRET=thisisverysecret sh -
echo "curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.0.1 K3S_CLUSTER_SECRET=thisisverysecret K3S_URL=https://$MASTER_IP:6443 sh -" | ssh node01

cp /etc/rancher/k3s/k3s.yaml /root/.kube/config

kubectl get node