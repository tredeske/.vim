vim setup
---------

This is a ready-to-go setup for vim.

To establish new env:

    ./install.sh


Go
--

Assume go is installed at $HOME/go


### Updating

Install fatih/vim-go, then run

    cd .vim
    git clone --depth=1 https://github.com/fatih/vim-go.git pack/plugins/start/vim-go
    rm -rf pack/plugins/start/vim-go/.git
    #
    # run vim and tell vim-go to set up what it needs...
    #
    rm -rf bin
    GOPATH=`pwd` vim -c GoInstallBinaries -c q
    rm -rf src
    for f in bin/*; do strip "$f"; done

vue.js
------

### Updating

    cd .vim
    git clone --depth=1 https://github.com/posva/vim-vue.git pack/plugins/start/vim-vue
    rm -rf pack/plugins/start/vim-vue/.git


