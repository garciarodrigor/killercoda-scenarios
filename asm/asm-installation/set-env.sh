#!/bin/sh

echo "Waiting cluster become Ready..."
kubectl wait --for=condition=Ready node/master node/node01
echo "All nodes are Ready"
