Deploy helloworld application `kubectl apply -f helloworld.yaml`{{execute T1}}

Make sure that the following command is running on `Terminal 3` `while [ true ]; do echo $(date) $(curl -s http://[[HOST_SUBDOMAIN]]-31080-[[KATACODA_HOST]].environments.katacoda.com/hello -w "%{http_code}"); sleep 1; done`{{execute T3}}


