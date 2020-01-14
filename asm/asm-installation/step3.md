We need a valid license to install ASM, so we will put it in that file 

`license.xml`{{open}}

Then we need a valid ClientId and ClientSecret from an Organization or Environment, it will be prompted by ASM CLI, or can be configured via ENV vars, you can config it in this file

`config.env`{{open}}

Then we can run the installation

`. config.env; asmctl install --platformUri=$SERVICEMESH_PLATFORM_URI --license=$LICENSE_PATH --clientId=$CLIENT_ID --clientSecret=$CLIENT_SECRET`{{execute}}

We can watch running PODs runnning

`watch kubectl get pod -n service-mesh --sort-by=.metadata.namespace`{{execute T2}}