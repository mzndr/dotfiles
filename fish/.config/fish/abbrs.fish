

abbr -a ls  "exa --group-directories-first"
abbr -a ll  "exa -la --git --group-directories-first"
abbr -a cat "bat"
abbr -a q   "exit"
abbr -a dcup "docker compose up -d && docker compose logs -f"
abbr -a ts 'tmux new -s $(basename $(pwd))'
abbr -a ta 'tmux attach'
abbr -a cw 'cargo watch - '