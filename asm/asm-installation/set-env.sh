#!/bin/sh

echo "Waiting cluster become Ready..."
kubectl wait --for=condition=Ready node/master node/node01
echo "All nodes are Ready"

echo "Marking master node as schedulable..."
kubectl taint node master node-role.kubernetes.io/master-
echo "All node as marked schedulable"