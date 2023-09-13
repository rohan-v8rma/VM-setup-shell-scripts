sudo apt -y install zsh git fonts-font-awesome
# zsh
# Type exit to exit from the zsh prompt

# Installing Oh My Zsh
# See deepdive of this command at https://github.com/rohan-v8rma/Tech-Tips/blob/master/Linux/README.md
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Plugin for autosuggestions in Oh My Zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Plugin for syntax highlighting in Oh My Zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Powerlevel10k theme for Oh My Zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# In the sed command, s stands for substitution operation, so the string is replaced 
# --in-place means overrwrite the original file.

# Changing the line `plugins=(git)` to `plugins=(git zsh-autosuggestions zsh-syntax-highlighting)`, inside .zshrc file
sed --in-place 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/1' ~/.zshrc
# Changing the line `ZSH_THEME="robbyrussell"` to `ZSH_THEME="powerlevel10k/powerlevel10k"`, inside .zshrc file
sed --in-place 's|ZSH_THEME="robbyrussell"|ZSH_THEME="powerlevel10k/powerlevel10k"|1' ~/.zshrc

#? Manual font installation for powerlevel10k: https://github.com/romkatv/powerlevel10k/blob/master/font.md
#? Install all 4 MesloNF fonts

#? Ctrl+Alt+T -> Three bars at top-right -> Preferences -> Unnamed profile -> Text -> Text Appearance -> Custom font -> MesloLGS NF
#? Append this line to settings.json of VScode "terminal.integrated.fontFamily": "MesloLGS NF"

# This changes the default shell to zsh, for the current user. Log out and log back in.
chsh -s $(which zsh)

