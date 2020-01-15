

You can run the following command to check if the node is in Ready state (you might need to run the command a couple of times, can take up to 30 seconds for the node to register):

`k3s kubectl get node`{{execute T1}}

For your convenience, the following command will wait until the node shows up as `Ready`:

`until k3s kubectl get node 2>/dev/null | grep master | grep -q ' Ready'; do sleep 1; done; k3s kubectl get node`{{execute T1}}

As soon as it shows `master` with status `Ready`, you have built your single host cluster!

```
NAME     STATUS   ROLES    AGE   VERSION
master   Ready    <none>   28s   v1.13.5-k3s.1
```