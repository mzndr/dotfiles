set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8

set -x GLUSR mzndr
set -x PATH "$HOME/.cargo/bin:$PATH"
set -x EDITOR "nvim"

set -x GOPROXY "https://goproxy.your-cloud.host|https://riverqueue.com/goproxy|https://proxy.golang.org|direct"
set -x GONOSUMDB "git.hetzner.company,riverqueue.com/riverpro"
set -x GOPRIVATE "git.hetzner.company"
set -x GTK_THEME "Adwaita:dark"
if test -e ~/tokens/glpat.token
  set -x GLPAT (cat ~/tokens/glpat.token)
end
if test -e ~/tokens/staging_loadbalancer_auth.token
  set -x HC_API_STAGING_TOKEN (cat ~/tokens/staging_loadbalancer_auth.token)
end
