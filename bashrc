
#Aliases
alias be='bundle exec'
alias ww='cd www/'
alias wp='cd /var/www/html'
alias sp='rspec --color'
alias c='clear'
alias s='be rails s'
alias ms='be middleman server'

source ~/.dotfiles/bash_aliases/git

#Rake
alias rkcm='be rake db:create db:migrate'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "
