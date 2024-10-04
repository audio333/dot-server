# Server

### Apt
* `$ sudo apt install git stow ranger tmux vim zsh fasd`
* `$ sudo apt install rsync neofetch htop tree trash-cli`

### Github
* [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)
    * `$ git clone https://github.com/zdharma-continuum/fast-syntax-highlighting $XDG_CONFIG_HOME/zsh`
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    * `$ git clone https://github.com/zsh-users/zsh-autosuggestions $XDG_CONFIG_HOME/zsh`
* [nvm](https://github.com/nvm-sh/nvm#installing-and-updating)
    * `$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash`
    * `$ source ~/.zshrc`
    * `$ nvm install --lts`
    * `$ nvm ls`
* [fzf](https://github.com/junegunn/fzf#using-git)
    * `$ ~/.fzf/uninstall`
    * `$ rm -rf ~/.fzf`
    * `$ git clone --depth 1 https://github.com/junegunn/fzf.git $XDG_DATA_HOME/fzf`
    * `$ $XDG_DATA_HOME/fzf/install --xdg`
* [vundle](https://github.com/VundleVim/Vundle.vim#quick-start)
    * `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
* [nvim](https://github.com/neovim/neovim/wiki/Installing-Neovim#appimage-universal-linux-package)
    * `$ curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage`
    * `$ chmod u+x nvim.appimage`
    * `$ ./nvim.appimage`
    * `$ sudo mv nvim.appimage /usr/local/bin/nvim`
    * `$ nvim`
* [LunarVim](https://www.lunarvim.org/01-installing.html#rolling)
    * `$ LV_BRANCH=rolling bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/rolling/utils/installer/install.sh)`
    > Additional Plugins
    * LunarVim/darkplus.nvim
    * mattn/emmet-vim
* [AstroVim](https://github.com/kabinspace/AstroVim#clone-the-repository)
    * `$ git clone https://github.com/kabinspace/AstroVim ~/.config/nvim`
    * `$ nvim +PackerSync`
* [github-cli](https://github.com/cli/cli/blob/trunk/docs/install_linux.md#debian-ubuntu-linux-raspberry-pi-os-apt)
    * `$ curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg`
    * `$ echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null`
    * `$ sudo apt update`
    * `$ sudo apt install gh`

### Removed
* [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation)
    * `$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

### Fresh Install Info
    sudo apt install git stow

    # clone dotfiles
    cd ~
    git clone https://github.com/audio333/dot-server.git

    #backup current dotfiles
    mkdir -p ~/Downloads/stowbackup
    mv ~/.bashrc ~/Downloads/stowbackup

    # symlink all files in dotfiles dir to home dir
    cd ~/dot-server

    # link only folders (trailing slash)
    stow -v -t ~ */

        # delete (-D flag)
        stow -v -D -t ~ */
        stow -v -D -t ~ tmux

        # redo link (-R)
        stow -v -R -t ~ */
        stow -v -R -t ~ tmux


    src: https://github.com/gotbletu

