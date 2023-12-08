set -x GLUSR mzndr
set -x GLPAT (cat "$HOME/glpat.token")
set -x OPENAI_KEY (cat "$HOME/openai-api.key")
set -x PATH "$HOME/.cargo/bin:$PATH"
set -x PATH "$HOME/scripts:$PATH"
set -x PATH "$(yarn global bin):$PATH"
set -x EDITOR "nvim"

