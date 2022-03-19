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

