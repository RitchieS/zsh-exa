# Oh My ZSH - exa aliases plugin

# Check if exa is installed, give a warning if it isn't and abort
if ! (( $+commands[exa] )); then
  print "zsh-exa-plugin: Warning, exa was not found. Please install exa to use this plugin.." >&2
  return 1
fi

# Set time to bold
#export EXA_COLORS='da=1;34:gm=1;34'

# Group directories first, show icons, and enable file size color scale
alias ls='exa --group-directories-first --icons --color-scale' # --time-style=iso
alias lt='exa --tree --level=2 --icons' # Show in tree view
alias l='ls -a'                         # Short, all files
alias ld='l -D'                         # Short, only directories
alias ll='ls -lbG --git'                # Long, file size prefixes, grid, git status
alias la='ll -a'                        # Long, all files
alias lC='la --sort=changed'            # Long, sort changed
alias lM='la --sort=modified'           # Long, sort modified
alias lS='la --sort=size'               # Long, sort size
alias lX='la --sort=extension'          # Long, sort extension
