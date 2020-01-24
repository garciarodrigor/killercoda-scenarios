Deploy helloworld application `kubectl apply -f helloworld.yaml`{{execute T1}}

Make sure that the following command is running on `Terminal 3` `while [ true ]; do echo $(date) $(curl -s http://[[HOST_SUBDOMAIN]]-31080-[[KATACODA_HOST]].environments.katacoda.com/hello -w "%{http_code}"); sleep 1; done`{{execute T3}}

Then we can create an adapter running `asmctl adapter create --name=adapter --namespace=default --clientId=$CLIENT_ID --clientSecret=$CLIENT_SECRET --size=small --replicas=1`{{execute T1}}

We can check the differents `sizes` running `asmctl adapter sizes`{{execute T1}}

We can list all created adapter and check it status running `asmctl adapter list`{{execute T1}}

When the adapter is ready, we can redeploy our application to be injected with the sidecard 
`asmctl kubectl rollout restart deploy/helloworld-v1 deploy/helloworld-v2`{{execute T1}}

Then we can bind our application `asmctl adapter binding create --name=helloworld --namespace=default --adapter=adapter --apiId=$API_ID --serviceName=helloworld`{{execute T1}}
