We need a valid license to install ASM, so we will put it in that file 

`license.xml`{{open}}

Then we need a valid ClientId and ClientSecret from an Organization or Environment, it will be prompted by ASM CLI, or can be canfigured via ENV vars, you can config it in this file

`config.env`{{open}}

Then we can run the installation

`asmctl install`{{execute}}

We can watch running PODs runnning

`watch kubectl get pod -n service-mesh --sort-by=.metadata.namespace`{{execute Watch PODs}}