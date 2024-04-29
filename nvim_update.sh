curl -L https://github.com/neovim/neovim/releases/download/stable/nvim.appimage -o /tmp/nvim.appimage
chmod u+x /tmp/nvim.appimage
mv /tmp/nvim.appimage $HOME/.local/bin/vim
pip install --upgrade --user "pynvim"
