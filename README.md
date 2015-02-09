.dotfiles
=========
dotdile管理用のリポジトリ。

How to use
------
### 初期設定 ###
    #--- homeディレクトリ直下に.dotfilesをclone ---#
    $ git clone [リポジトリURL]
    
    #--- .dotfilesに移動 ---#
    $ cd .dotfiles
    
    #--- setup.shを実行 ---#
    $ ./setup.sh

    
### Prezto設定 ###
    #--- Preztoリポジトリをclone ---#
    $ git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
    
    #--- 設定ファイルを作成 ---#
    $ setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done


### Neobundle設定 ###
リポジトリをclone ---#
    #--- サブモジュール初期化  ---#
    $ git submodule init
    $ git submodule update

