curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage $HOME/.local/bin/vim
vim +'PlugUpgrade --sync' +qa
vim +'PlugUpdate --sync' +qa
pip install --upgrade neovim
