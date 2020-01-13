function fish_prompt --description "Write out the prompt"

    if test (string length "$PYENV_VERSION") -gt 0
        set __fish_prompt_venv "($PYENV_VERSION) "
    end

    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
    end

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    if not set -q __fish_prompt_user
        set -g __fish_prompt_user (set_color cyan)
    end

    if not set -q __fish_prompt_cwd
        set -g __fish_prompt_cwd (set_color green)
    end

    echo -n -s "$__fish_prompt_venv""$__fish_prompt_user" "$USER" @ "$__fish_prompt_hostname" "$__fish_prompt_normal" ':' "$__fish_prompt_cwd" (prompt_pwd) "$__fish_prompt_normal" '> '

end
