Then We will download and install ASM CLI.

`mkdir -p $HOME/.asm && curl -Ls https://anypoint.mulesoft.com/servicemesh/xapi/v1/install > $HOME/.asm/asmctl && chmod +x $HOME/.asm/asmctl && export PATH=$PATH:$HOME/.asm`{{execute}}

Then we will add it to our PATH.

`export PATH=$PATH:$HOME/.asm`{{execute}}

Then we can check that it is installed correctly

`asmctl help`{{execute}}