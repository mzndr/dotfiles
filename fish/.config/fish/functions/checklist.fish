# ~/.config/fish/functions/checklist.fish
function checklist
    set -l bins \
        bat \
        btm \
        jq \
        curl \
        docker \
        exa \
        fish \
        fnm \
        git \
        gpg \
        mkcert \
        nvim \
        oha \
        ouch \
        rg \
        rustup \
        scp \
        ssh \
        stow \
        tmux \
        zoxide \
        dust \
        keepass \
        awesome \
        dmenu \
        websocat \
        nmtui \
        atac \
        duf \
        yay

    set -l installed_count 0

    for bin in (string pad $bins)
        echo -sn $bin " "

        if fish -c "command -q $bin"
            set installed_count (math $installed_count + 1)
            echo -s (set_color green) installed (set_color normal)
        else
            echo -s (set_color red) missing (set_color normal)
        end
    end

    echo -s \n $installed_count / (count $bins) " installed"
end
