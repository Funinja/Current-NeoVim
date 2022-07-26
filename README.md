# Current-NeoVim

To install wsl2:
1. go to the windows search bar and type "turn windows features on or off" and
enable Windows Subsystem for Linux and Virtual Machine Platform

2. then go to the microsoft store and search for and install ubuntu.

To install my setup from scratch in ubuntu, do the following steps.

1. First install Neovim:
  sudo apt install neovim
  
2. Use git to clone the respository into a folder called .config/nvim:<br/>
git clone https://github.com/Funinja/Current-NeoVim.git ~/.config/nvim

3. Get a nerd font for the wsl terminal at https://www.nerdfonts.com/font-downloads.

For the sake of example, you could download the zip file for the JetBrainsMono nerd font on the site.

After extracting it to a folder, highlight all of the files extracted and right click to install all of them.
Then, if you right click your terminal and select properties then go to font, you should be able to select the nerd font you had just installed.

4. For the plugins we need vim-plug. Currently, we can use this command to install it:<br/>
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
       
5. Now we can go into .config/nvim/init.vim using nvim. In the file we can type :PlugInstall to install the rest of the plugins.
Some plugins will require additional setup, so there may be some error messages that appear when running the nvim which we will get rid of shortly.

6. To install Tagbar, run:<br/>
sudo apt install exuberant-ctags

7. To fully use COC(autocomplete):<br/>
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -<br/>
sudo apt-get install -y nodejs<br/>
sudo npm install -g yarn<br/>
cd ~/.local/share/nvim/plugged/coc.nvim/<br/>
yarn install<br/>
yarn build<br/>

8. For installing python autocomplete:
sudo apt install python3-pip<br/>
pip3 install jedi<br/>
Then once you use nvim, type:<br/>
:CocInstall coc-pyright<br/>

9. For installing c++ autocomplete:<br/>
nvim into a file and type:<br/>
:CocInstall coc-clangd<br/>
:CocCommand clangd.install<br/>

10. Have fun

