# vim_collection

install vim 7.4 on ubuntu 12.04

http://linuxg.net/how-to-install-vim-7-4-on-ubuntu-13-10-13-04-12-04-linux-mint-16-15-13-and-debian-sid/

$ sudo add-apt-repository ppa:fcwu-tw/ppa

$ sudo apt-get update

$ sudo apt-get install vim

refs for compile vim with python support

https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source

http://zaiste.net/2013/05/compiling_vim_with_ruby_and_python_support_on_ubuntu/ 

ref for pathogen

https://github.com/tpope/vim-pathogen

ref for vim+python mode

https://github.com/klen/python-mode

ref for vim+comments

https://github.com/scrooloose/nerdcommenter

ref for file explore

https://github.com/scrooloose/nerdtree

vim as a python IDE

http://michiganlabs.com/vim-python-ide/#.VNIIKy788mM

tmux issues


https://www.snip2code.com/Snippet/204599/tmux-installation-steps-for-Ubuntu

# tmux installation steps for Ubuntu 14.04 (Trusty Tahr)

sudo apt-get update

sudo apt-get install -y python-software-properties software-properties-common

sudo add-apt-repository -y ppa:pi-rho/dev

sudo apt-get update

sudo apt-get install -y tmux=1.9a-1~ppa1~t

tmux -V

# On Ubuntu 12.04 (Precise Pangolin), step 5 would be: sudo apt-get install -y tmux=1.9a-1~ppa1~p

# On Ubuntu 13.10 (Saucy Salamander), step 5 would be: sudo apt-get install -y tmux=1.9a-1~ppa1~s

http://unix.stackexchange.com/questions/122238/protocol-version-mismatch-client-8-server-6-when-trying-to-upgrade

$ tmux attach

protocol version mismatch (client 7, server 6)

$ pgrep tmux

3429

$ /proc/3429/exe attach



