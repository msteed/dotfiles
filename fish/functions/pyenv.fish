function pyenv
    function _report
        echo "VIRTUAL_ENV=$VIRTUAL_ENV"
    end

    set newenv $argv[1]
    if not string length -q $newenv
        _report
        return 0
    end

    if test ! -d $HOME/$newenv -o ! -r $HOME/$newenv/bin/activate.fish
        echo "$HOME/$newenv does not look like a python environment"
        return 1
    end

    if contains 'deactivate' (functions)
        deactivate
    end
    source $HOME/$newenv/bin/activate.fish
    _report
end
