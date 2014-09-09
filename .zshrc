#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

if [[ -s "${ZDOTDIR:-$HOME}/.zsh/init.mine.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zsh/init.mine.zsh"
fi

if [[ -s "${ZDOTDIR:-$HOME}/.zsh/init.git.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zsh/init.git.zsh"
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
