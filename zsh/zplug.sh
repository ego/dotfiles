#!/usr/bin/env sh

echo "zplug setup ..."
# https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins

# base
zplug "plugins/osx", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/gitignore", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
# clipboard
zplug "plugins/copyfile", from:oh-my-zsh
# moving directory
zplug "plugins/dircycle", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh
# archive: extract -r abc.zip
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/gem", from:oh-my-zsh
# zsh
# https://github.com/denysdovhan/spaceship-prompt/wiki/Screenshots
# https://denysdovhan.com/spaceship-prompt/docs/Options.html#exit-code-exit_code
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions", at:develop
zplug "zsh-users/zsh-history-substring-search"
zplug "plugins/history", from:oh-my-zsh
# alias-finder "git pull"
zplug "plugins/alias-finder", from:oh-my-zsh
# web/json
zplug "stedolan/jq", from:gh-r, as:command, rename-to:jq
# google oh-my-zsh / ddg oh-my-zsh / github oh-my-zsh / stackoverflow oh-my-zsh
zplug "plugins/web-search", from:oh-my-zsh
zplug "plugins/encode64", from:oh-my-zsh
zplug "plugins/node", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
# zplug "plugins/yarn", from:oh-my-zsh
# emoji
zplug "b4b4r07/emoji-cli", on:"stedolan/jq"
# docker/aws/k8s
zplug "plugins/docker", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/aws", from:oh-my-zsh
zplug "plugins/kubectl", from:oh-my-zsh
zplug "plugins/helm", from:oh-my-zsh
zplug "plugins/kops", from:oh-my-zsh
# python
zplug "plugins/python", from:oh-my-zsh
zplug "plugins/pip", from:oh-my-zsh
zplug "plugins/virtualenv", from:oh-my-zsh
zplug "plugins/pylint", from:oh-my-zsh
zplug "plugins/autopep8", from:oh-my-zsh
zplug "plugins/pep8", from:oh-my-zsh
zplug "plugins/django", from:oh-my-zsh
# redis
zplug "plugins/redis-cli", from:oh-my-zsh
zplug "plugins/cargo", from:oh-my-zsh
zplug "plugins/cask", from:oh-my-zsh
zplug "plugins/dash", from:oh-my-zsh
zplug "plugins/lein", from:oh-my-zsh
# emacs https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/emacs
zplug "plugins/emacs", from:oh-my-zsh
zplug "plugins/sublime", from:oh-my-zsh
# https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/magic-enter
zplug "plugins/magic-enter", from:oh-my-zsh

# Rust
zplug "plugins/rust", from:oh-my-zsh
zplug "plugins/ripgrep", from:oh-my-zsh

# colored curl
zplug "b4b4r07/httpstat", as:command, use:'(*).sh', rename-to:'$1'


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

success "Successfully installed zplug-ins."
exit
