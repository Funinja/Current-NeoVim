# Current-NeoVim
1. Install lastest stable version of Neovim

2. Install lua

3. Install packer, with quickstart section: <br>
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

4. Go to the Lsp installer github repo and make sure you have the minimum requirements for your machine

5. Clone this repo into your nvim config directory: <br>
git clone https://github.com/Funinja/Current-NeoVim.git ~/.config/nvim

6. Go into ~/.config/nvim/init.lua with nvim and type: <br>
:PackerSync

7. Get a nerd font for the wsl terminal at https://www.nerdfonts.com/font-downloads.

For the sake of example, you could download the zip file for the JetBrainsMono nerd font on the site.

After extracting it to a folder, highlight all of the files extracted and right click to install all of them. Then, if you right click your terminal and select properties then go to font, you should be able to select the nerd font you had just installed.

8. Get rp: <br>
sudo apt-get install ripgrep

9. To install Tagbar, run: <br>
sudo apt install exuberant-ctags
