#!/bin/sh

while [ $(k3s kubectl get nodes --no-headers 2>/dev/null | grep -c -v "NotReady") -eq 0 ]; do echo -n .;sleep 10; done; echo