abbr -a c 'clear'
abbr -a cat "bat"
abbr -a cw 'cargo watch - '
abbr -a dcps 'docker compose ps --format "table {{.ID}}\t{{.Name}}\t{{.Ports}}\t{{.RunningFor}}\t{{.Status}}"'
abbr -a dcup "docker compose up -d && docker compose logs -f"
abbr -a dec-to-hex 'printf "0x%x\n" '
abbr -a dps 'docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}\t{{.RunningFor}}\t{{.Status}}"'
abbr -a duf 'duf -hide loops'
abbr -a fcd 'cd (dirname (fzf))'
abbr -a fish-edit-config 'cd ~/dotfiles/fish/.config/fish && nvim ./config.fish'
abbr -a fish-reload-config 'source ~/.config/fish/**/*.fish'
abbr -a fn 'find . -name '
abbr -a fvim 'nvim (\'fzf --preview="cat {}"\')'
abbr -a fzf 'fzf --preview="cat {}"'
abbr -a icat 'kitten icat'
abbr -a k 'kubectl'
abbr -a kc 'kubectl config use-context'
abbr -a ll  "exa -la --git --group-directories-first"
abbr -a q   "exit"
abbr -a t "exa -a --git --git-ignore --group-directories-first --tree"
abbr -a ta 'tmux attach'
abbr -a ts 'TMUX_SESSION_DIR=$(pwd) tmux new -s $(basename $TMUX_SESSION_DIR)'
abbr -a v 'nvim'

# Git
abbr -a gc  'git commit'
abbr -a gca 'git commit --amend'
abbr -a gd  'git diff'
abbr -a gl  'git log --oneline'
abbr -a glg 'git log --oneline --graph'
abbr -a glh 'git log --oneline -n 10'
abbr -a gp  'git push'
abbr -a gr  'git rebase'
abbr -a gri 'git rebase -i'
abbr -a gra 'git rebase --abort'
abbr -a grc 'git rebase --continue'
abbr -a gs  'git status --short '
