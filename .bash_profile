NO_PROXY=ge.com,webmail.ge.com,*.xip.io,lattice.dev,*.dev,3.*,192.*,127.*,localhost,0.0.0.*,amazonaws.com,localhost,127.0.0.1,169.254.169.254,10.38.8.108,10.152.122.6,10.38.8.166,.cloud.ge.com,.scalr.corporate.ge.com,10.38.145.103,tanium01.ge.com,tanium02.ge.com,alpzs.tanium.ge.com,.tsg.ge.com,10.153.16.31,10.153.16.8,10.153.16.22
HTTPS_PROXY=PITC-Zscaler-Americas-Cincinnati3PR.proxy.corporate.ge.com:80
HTTP_PROXY=PITC-Zscaler-Americas-Cincinnati3PR.proxy.corporate.ge.com:80
GC02X73UUJG5ME:~ a212606213$ vi ~/.bash_
.bash_history   .bash_profile   .bash_sessions/
GC02X73UUJG5ME:~ a212606213$ vi ~/.bash_profile
GC02X73UUJG5ME:~ a212606213$ cat ~/.bash_profile
# Powerline
#powerline-daemon -q
#POWERLINE_BASH_CONTINUATION=1
#POWERLINE_BASH_SELECT=1
#source /usr/local/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh

# Custom Proxy env var
# export http_proxy=PITC-Zscaler-Global-ZEN.proxy.corporate.ge.com:80
export http_proxy=PITC-Zscaler-Americas-Cincinnati3PR.proxy.corporate.ge.com:80
export no_proxy=ge.com,webmail.ge.com,*.xip.io,lattice.dev,*.dev,3.*,192.*,127.*,localhost,0.0.0.*,amazonaws.com,localhost,127.0.0.1,169.254.169.254,10.38.8.108,10.152.122.6,10.38.8.166,.cloud.ge.com,.scalr.corporate.ge.com,10.38.145.103,tanium01.ge.com,tanium02.ge.com,alpzs.tanium.ge.com,.tsg.ge.com,10.153.16.31,10.153.16.8,10.153.16.22

export HTTP_PROXY=$http_proxy
export https_proxy=$http_proxy
export HTTPS_PROXY=$http_proxy
export ALL_PROXY=$http_proxy
export NO_PROXY=$no_proxy
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

#alias vault='docker run -it -v $(PWD):/data --rm -e HTTP_PROXY -e HTTPS_PROXY -e NO_PROXY -e VAULT_ADDR -e VAULT_TOKEN -e VAULT_SKIP_VERIFY vault vault'
alias openstack-sh='docker run -ti --rm -v $(PWD):/data jaywryan/openstack-client'
alias openstack='openstack-sh openstack'
alias ansible='docker run -it --rm -v $(PWD):/data ansible-test ansible'
alias ansible-playbook='docker run -it --rm -v $(PWD):/data microsoft/ansible ansible-playbook'
alias ansible-galaxy='docker run -it --rm -v $(PWD):/data microsoft/ansible ansible-galaxy'