### colour
```
// Set status bar background to green
set -g status-bg green
// Set status bar foreground to black
set -g status-fg black
```

## tmux key bindings
```
#remap prefix from C-b to C-z
unbind C-b
set-option -g prefix C-z
bind-key C-z send-prefix

#split panes using | and -
bind | split-window -h
bind - split-window -v
unbind '"'
unbind %

#switch panes using alt-arrow without prefix
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

#don't rename windows automatically please
set-option -g allow-rename off

#start windows and panes at 1, not 0
set -g base-index 1
setw -g pane-base-index 1

# Working Comments

#create session. tmux -s mysession
#list active sessions. tmux ls
#attach to existing session. tmux a -t session-name
#detach from session. prefix + d
#kill session. tmux kill-session -t session-name
#resize active window. Activate prefix, then hold ALT and arrrow keys to move window
```

