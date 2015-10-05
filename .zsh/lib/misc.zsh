## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## file rename magick
bindkey "^[m" copy-prev-shell-word

## jobs
setopt long_list_jobs

## editor
export EDITOR=nano
export VISUAL=nano

## pager
export PAGER=less
export LC_CTYPE=$LANG
