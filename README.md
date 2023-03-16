# Neovim-Config
# Debian Linux Installation

Open the terminal and run the following commands:

```
sudo apt install neovim
```

Check to confirm that Python is installed:

```
python3 --version
```

If Python is not installed, run:

```
sudo apt install python
```

To check the health of your NeoVim install, open NeoVim by running `nvim` in the terminal and enter the following command:

```
:checkhealth
```

If Python 3 reports an error, run following in the terminal (to exit NeoVim, write `:qa!`):

```
pip3 install --user pynvim
```

NeoVim comes with an extremely austere set of defaults, including no mouse support, making it difficult to use prior to configuration.
In order to install plugins, extending the features included in NeoVim, run the following:

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Install the FZF fuzzy finder, Ripgrep, and Pandoc with the following commands respectively:

```
sudo apt install fzf
sudo apt install ripgrep
sudo apt install pandoc
sudo apt install pandoc-citeproc
```

## [Git](https://git-scm.com/)

Check to see whether Git is already installed by entering the following:

```
git --version
```

If Git is not installed, run:

```
sudo apt install git
```

Next, install LazyGit using Launchpad by running:

```
sudo add-apt-repository ppa:lazygit-team/release
sudo apt-get update
sudo apt-get install lazygit
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
```

### Installing the GitHub Cli

Assuming that you are using GitHub to host your repositories, it is convenient to install the GitHub Cli which allows you to make changes to your repositories directly from the terminal inside NeoVim:

```
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo apt-add-repository https://cli.github.com/packages
sudo apt update
sudo apt install gh
```

You will then need to follow the [instructions](https://cli.github.com/manual/) in order to authenticate GitHub Cli by running:

```
gh auth login
```

Set NeoVim as your default editor by running:

```
gh config set editor nvim
```

For further information, see the section **GitHub Cli** in the [Cheat Sheet](https://github.com/benbrastmckie/.config/blob/master/CheatSheet.md) as well as the [GitHub Cli Repo](https://github.com/cli/cli).

### Adding an SSH Key to GitHub

If you have not already, you can also add an SSH key by amending and running the following:

```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

Hit `return` once, entering your GitHub passphrase in response to the prompt.
Next run:

```
bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
```

If you do not have `xclip` you can install it by running:

```
sudo apt install xclip
```

After the install, run the following to copy the SSH key to your system clipboard:

```
xclip -sel clip < ~/.ssh/id_rsa.pub
```

In the top right corner of your GitHub page, click `Profile -> Settings -> SSH and GPG Keys` selecting `New SSH Key`.
Name the key after the devise you are using, pasting the SSH key from the clipboard into the appropriate field.
Saving the key completes the addition.

## [Configuration](https://github.com/benbrastmckie/.config)

In order to clone the configuration files into the appropriate folder on your computer, enter the following into the terminal, hitting return after each line:

```
cd ~/.config
git remote add origin https://github.com/benbrastmckie/.config.git
git pull origin master
mkdir -p ~/.vim/files/info
sudo apt install python-pip
sudo pip3 install neovim-remote
sudo apt install yarn
```

If you have not already installed LaTeX on your computer, you can run the following command in order to check to see if it is already installed:

```
latexmk --version
```

To install LaTeX, run the following

```
sudo apt install texlive-full
```

Run NeoVim to install plugins:

```
nvim
```

After the plugins finish installing, quite NeoVim with `:qa!`.

## [Zathura](https://pwmt.org/projects/zathura/)

Install the Zathura pdf viewer by running:

```
sudo apt install zathura-pdf-mupdf
```

After reopening NeoVim, enter the following command:

```
:checkhealth
```

Ignore any warnings for Python 2, Ruby, and Node.js.
If other warnings are present, it is worth following the instructions provided by CheckHealth, or else troubleshooting the errors by Googling the associated messages as needed.

## [Zotero](https://www.zotero.org/)

Download and extract the [Zotero](https://www.zotero.org/download/) tarball in ~/Downloads, and move the extracted contents and set the launcher by running the following in the terminal:

```
sudo mv ~/Downloads/Zotero_linux-x86_64 /opt/zotero
cd /opt/zotero
sudo ./set_launcher_icon
sudo ln -s /opt/zotero/zotero.desktop ~/.local/share/applications/zotero.desktop
```

Install Better-BibTex by downloading the latest release [here](https://retorque.re/zotero-better-bibtex/installation/) (click on the .xpi).
Go into `Tools -> add-ons` and click the gear in the upper right-hand corner, selecting `Install Add-on From File` and navigate to the .xpi file in ~/Downloads.
Go into `Edit -> Preferences -> BetterBibTex` and set citation key format to `[auth][year]`.
Go into `Edit -> Preferences -> Sync` entering your username and password, or else create a new account if you have not already done so.
Also check 'On item change' at the bottom left.
Now switch to the 'Automatic Export' sub-tab and check 'On Change'.
Exit `Preferences` and click the green sync arrow in the to right-hand corner (if you have not previously registered a Zotero database, no change will occur).
Install the appropriate plugin for your browser by following the link [here](https://www.zotero.org/download/)
Find a paper online, sigining in to the journal as necessary and downloading the PDF manually.
Now return to the paper on the journal's website and test the browser plugin for Zotero which should be displayed in the top right of the screen.
Create the bib and bst directories, and move the .bst bibliography style files into the appropriate folder by running the following:

```
mkdir -p ~/texmf/bibtex/bib
cp -R ~/.config/latex/bst ~/texmf/bibtex
```

Right-click the main library folder in the left-most column, and select `Export Library`.
Under the `Format` dropdown menu, select `Better BibTex`, selecting the `Keep Updated` box. 
Save the file as `Zotero.bib` to ~/texmf/bibtex/bib which you previously created.
You are now ready to cite files in your Zotero database.

## [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)

In order for NeoVim to load icons, it will be imporant to install a NerdFont.
For simplicity, I have included RobotoMono in `~/.config/fonts` which you can now move to the appropriate folder on your computer by entering the following in the terminal:

```
sudo cp -R ~/.config/fonts/RobotoMono/ /usr/share/fonts
```

If you intend to use the stock terminal, you will need to go into the terminal's settings to change the font to RobotoMono regular.
You are now ready to write LaTex in NeoVim inside the stock terminal.
