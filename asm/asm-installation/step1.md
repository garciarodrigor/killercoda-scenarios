We will start downloading Istio CLI.

 `curl -sL https://raw.githubusercontent.com/istio/istio/release-1.4/release/downloadIstioCtl.sh | ISTIO_VERSION=1.4.6 sh -s -`{{execute}}

Then we will add it to our PATH.

`export PATH=$PATH:$HOME/.istioctl/bin`{{execute}}

Then we can run the following command to install Istio

`istioctl manifest apply --set values.global.disablePolicyChecks=false,trafficManagement.components.pilot.k8s.resources.requests.memory=256Mi,trafficManagement.components.pilot.k8s.resources.requests.cpu=100m,telemetry.components.telemetry.k8s.resources.requests.cpu=100m`{{execute}}
