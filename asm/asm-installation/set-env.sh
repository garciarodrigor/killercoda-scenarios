#!/bin/sh

echo "Waiting cluster become Ready..."
kubectl wait --for=condition=Ready nodes --all
echo "All nodes are Ready"
