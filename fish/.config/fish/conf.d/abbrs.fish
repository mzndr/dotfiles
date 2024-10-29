abbr -a fish-edit-config 'cd ~/dotfiles/fish/.config/fish && nvim ./config.fish'
abbr -a fish-reload-config 'source ~/.config/fish/**/*.fish'

abbr -a dec-to-hex 'printf "0x%x\n" '

abbr -a ll  "exa -la --git --group-directories-first"
abbr -a cat "bat"
abbr -a q   "exit"
abbr -a dcup "docker compose up -d && docker compose logs -f"

abbr -a ts 'TMUX_SESSION_DIR=$(pwd) tmux new -s $(basename $TMUX_SESSION_DIR)'
abbr -a ta 'tmux attach'

abbr -a cw 'cargo watch - '
abbr -a v 'nvim'
abbr -a t "exa -a --git --git-ignore --group-directories-first --tree"
abbr -a dps 'docker ps --format "table {{.ID}}\t{{.Names}}\t{{.Ports}}\t{{.RunningFor}}\t{{.Status}}"'
abbr -a dcps 'docker compose ps --format "table {{.ID}}\t{{.Name}}\t{{.Ports}}\t{{.RunningFor}}\t{{.Status}}"'
abbr -a fn 'find . -name '
abbr -a fzf 'fzf --preview="cat {}"'
abbr -a fvim 'nvim $(\'fzf --preview="cat {}"\')'

abbr -a gs 'git status --short '
abbr -a gd 'git diff'
abbr -a gp 'git push'
abbr -a gc 'git commit -m ""'
abbr -a gca 'git commit --amend'
abbr -a gl 'git log --oneline'
abbr -a glg 'git log --oneline --graph'

abbr -a c 'clear'
abbr -a duf 'duf -hide loops'

abbr -a icat 'kitten icat'

abbr -a k 'kubectl'
abbr -a kc 'kubectl config use-context'
