curl -L https://github.com/neovim/neovim/releases/download/stable/nvim.appimage -o /tmp/nvim.appimage
chmod u+x /tmp/nvim.appimage
mv /tmp/nvim.appimage $HOME/.local/bin/vim
vim +'PlugUpgrade --sync' +qa
vim +'PlugUpdate --sync' +qa
vim +'UpdateRemotePlugins' +qa
pip install --upgrade --user "pynvim" "msgpack" "python-language-server[all]"
