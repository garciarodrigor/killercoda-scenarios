We will start downloadind and installing ASM CLI.

`mkdir -p $HOME/.asm && curl -Ls https://cdn-devx.anypoint.mulesoft.com/artifacts/service-mesh-cli/asm-latest.sh > $HOME/.asm/asmctl && chmod +x $HOME/.asm/asmctl`{{execute}}

Then we will add it to our PATH.

`export PATH=$PATH:$HOME/.asm`{{execute}}

Then we can check that it is installed correctly

`asmctl help`{{execute}}