# Commands / Shortcuts

### NORMAL MODE
#### Window navigation
```
<Ctrl>+h            -   move the left
<Ctrl>+j            -   move down
<Ctrl>+k            -   move up
<Ctrl>+l            -   move to the right
<Ctrl> +            -   zoom in
<Ctrl> +            -   zoom out
```

#### Resize with arrow
```
<Ctrl>+Up           -   resize horizontally
<Ctrl>+Down         -   resize horizontally
<Ctrl>+Left         -   resize vertically
<Ctrl>+Right        -   resize vertically
```

#### Navigate buffer
```
<Shift>+l           -   navigate to the right
<Shift>+h           -   navigate to the left
```

#### Shortcut
```
<leader>+h          -   clear highlights
<leader>+c          -   close buffer
```

#### NvimTree
```
<leader>+e          -   toggle explorer
```

#### Telescope
```
<leader>+f          -   telescope find files
<leader>+F          -   telescope live grep
<leader>+P          -   telescope projects
<leader>+b          -   telescope buffers
```

#### LSP
```
gD                  -   declaration
gd                  -   definition
K                   -   hover
gI                  -   implementation
gr                  -   references
gl                  -   open float diagnostic
<leader>+lf         -   format
<leader>+li         -   LSP Info
<leader>+lI         -   installer info
<leader>+la         -   code action
<leader>+lj         -   go to next diagnostic
<leader>+lk         -   go to previous diagnostic
<leader>+lr         -   rename buffer
<leader>+ls         -   document symbols
<leader>+lq         -   quick fix
```

### WINDOW
```
<Ctrl>+w s          -   Split current window horizontally
<Ctrl>+w v          -   Split current window vertically
<Ctrl>+w c          -   Close current window
<Ctrl>+W r          -   Swap bottom/top if split horizontally
<Ctrl>+W R          -   Swap top/bottom if split horizontally
<Ctrl>+w <Ctrl>+w   -   switch between windows
<Ctrl>+w UP         -   Move to the top window from current window
<Ctrl>+w DOWN       -   Move to the bottom window from current window
<Ctrl>+w LEFT       -   Move to the left window from current window
<Ctrl>+w RIGHT      -   Move to the right window from current window
<Ctrl>+w >          -   Incrementally increase the window to the right.
<Ctrl>+w <          -   Incrementally increase the window to the left.
<Ctrl>+w -          -   Incrementally decrease the window's height.
<Ctrl>+w +          -   Incrementally increase the window's height.
```

# How to install Neovim
## [Install wsl & Ubuntu](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10#3-download-ubuntu)
Open Windows Command Prompt in administrator mode
```
wsl --install -d Ubuntu-20.04
```

Install the latest updates
```
sudo apt update && sudo apt upgrade -y
```

## Install Windows Terminal
Open Microsoft Store and install <strong>Windows Terminal</strong>

## Install Z shell
Install [Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)
```
sudo apt-get install zsh
```

Install [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Install [PowerLevel10k](https://github.com/romkatv/powerlevel10k)
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Install [Powerline](https://github.com/powerline/fonts) font
```
sudo apt-get install fonts-powerline
```
Install [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/FiraCode.zip)

> Download and install for all users

Open <strong>zshrc</strong> file by typing `vim ~/.zshrc` and edit command as below
```
ZSH_THEME="powerlevel10k/powerlevel10k"
```
Install [zsh auto suggestion](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
Add the plugin to the list of plugins for Oh My Zsh
```
plugins=(git zsh-autosuggestions)
```

## Install [Node.js](https://github.com/nodesource/distributions/blob/master/README.md#ubuntu-versions)
Download and import the Nodesource GPG key
```
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
```
Create deb repository
```
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
```
Run Update and Install
```
sudo apt-get update
sudo apt-get install nodejs -y
```
Check version
```
node -v
```

## Install [Npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)
```
npm install -g npm
```

## Install Neovim

```
sudo add-apt-repository ppa:neovim-ppa/unstable && sudo apt-get update && sudo apt-get install neovim
```

Clone this repository

```sh
git clone https://github.com/fairulazmin/lvim ~/.config/lvim
```

Install Packer
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Install `ripgrep` for Telescope to work:

```
sudo apt install ripgrep
```

Run `nvim`

run `:PackerInstall`

run `:PackerUpdate`

run `:Mason` and install
```
autopep8
bash-language-server
css-lsp
html-lsp
json-lsp
prettier
pyright
tailwindcss-language-server
typescript-language-server
yaml-language server
```

Check health status
```
:checkhealth
```
## Uninstall Neovim
```
sudo apt-get purge neovim
```
