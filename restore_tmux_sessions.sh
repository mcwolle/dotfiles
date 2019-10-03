#!/usr/local/bin/zsh

SESSIONNAME="Workspace"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]; then
  tmux new-session -s $SESSIONNAME -n 'host' -d
  tmux send-keys 'cd /' C-m
  tmux send-keys 'clear' C-m

  tmux new-window -n 'db'
  tmux send-keys 'jexec db /usr/local/bin/zsh' C-m
  tmux send-keys 'clear' C-m

  tmux new-window -n 'ns'
  tmux send-keys 'jexec ns /usr/local/bin/zsh' C-m
  tmux send-keys 'clear' C-m

  tmux new-window -n 'mail'
  tmux send-keys 'jexec mail /usr/local/bin/zsh' C-m
  tmux send-keys 'clear' C-m

  tmux new-window -n 'www'
  tmux send-keys 'jexec www /usr/local/bin/zsh' C-m
  tmux send-keys 'clear' C-m

  tmux new-window -n 'ts'
  tmux send-keys 'jexec ts /usr/local/bin/zsh' C-m
  tmux send-keys 'clear' C-m

  tmux new-window -n 'home'
  tmux send-keys 'jexec home /usr/local/bin/zsh' C-m
  tmux send-keys 'clear' C-m

  tmux new-window -n 'vault'
  tmux send-keys 'jexec vault /usr/local/bin/zsh' C-m
  tmux send-keys 'clear' C-m

  tmux select-window -t $SESSIONNAME:0
fi

tmux attach -t $SESSIONNAME
