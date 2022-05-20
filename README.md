# Server

### Apt
* `$ sudo apt install git stow ranger tmux vim zsh fasd`
* `$ sudo apt install rsync neofetch htop tree trash-cli`

### Github
* [fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)
    * `$ git clone https://github.com/zdharma-continuum/fast-syntax-highlighting`
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    * `$ git clone https://github.com/zsh-users/zsh-autosuggestions`
* [nvm](https://github.com/nvm-sh/nvm#installing-and-updating)
    * `$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash`
    * `$ source ~/.zshrc`
    * `$ nvm install --lts`
    * `$ nvm ls`
* [fzf](https://github.com/junegunn/fzf#using-git)
    * `$ git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf`
    * `$ ~/.fzf/install`
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

