#!/bin/sh

echo "Setting up primary server 1"
k3sup install --host 192.168.4.68 \
--user fack \
--cluster \
--local-path kubeconfig \
--context default \
--ssh-key $HOME/.ssh/fackbookpro \
--print-command

echo "Fetching the server's node-token into memory"

export NODE_TOKEN=$(k3sup node-token --host 192.168.4.68 --ssh-key $HOME/.ssh/fackbookpro --user fack)

echo "Setting up additional server: 2"
k3sup join \
--host 192.168.4.66 \
--server-host 192.168.4.68 \
--server \
--node-token "$NODE_TOKEN" \
--user fack \
--ssh-key $HOME/.ssh/fackbookpro \
--print-command

echo "Setting up additional server: 3"
k3sup join \
--host 192.168.4.65 \
--server-host 192.168.4.68 \
--server \
--node-token "$NODE_TOKEN" \
--user fack \
--ssh-key $HOME/.ssh/fackbookpro \
--print-command

