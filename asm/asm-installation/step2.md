We will start downloadind and installing ASM CLI.

`mkdir -p $HOME/.asm && curl -Ls https://raw.githubusercontent.com/mulesoft/service-mesh-installer/master/service-mesh?token=AAJHR5XMVYA5WVCEMNHTRKS6EI5F6 > $HOME/.asm/service-mesh && chmod +x $HOME/.asm/service-mesh`{{execute}}

Then we will add it to our PATH.

`export PATH=$PATH:$HOME/.asm`{{execute}}

Then we can check that it is installed correctly

`service-mesh help`{{execute}}