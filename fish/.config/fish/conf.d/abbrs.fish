abbr -a ls  "exa --group-directories-first"
abbr -a ll  "exa -la --git --group-directories-first"
abbr -a cat "bat"
abbr -a q   "exit"
abbr -a dcup "docker compose up -d && docker compose logs -f"
abbr -a ts 'tmux new -s $(basename $(pwd))'
abbr -a ta 'tmux attach'
abbr -a cw 'cargo watch - '
abbr -a v 'nvim'
abbr -a tree  "exa -la --git --git-ignore --group-directories-first --tree"
abbr -a dps 'docker ps --format "table {{.ID}}\t{{.Names}}\t{{.RunningFor}}\t{{.Status}}"'
abbr -a dcps 'docker compose ps --format "table {{.ID}}\t{{.Names}}\t{{.RunningFor}}\t{{.Status}}"'
abbr -a fn 'find . -name '

abbr -a gs 'git status'
abbr -a gd 'git diff'
abbr -a gp 'git push'
abbr -a gc 'git commit -m "'
abbr -a gca 'git commit --amend'
