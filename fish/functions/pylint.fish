function pylint
    set rcfile .testing.pylintrc
    pushd .
    while [ (pwd) != $HOME -a (pwd) != / -a ! -e ./$rcfile ]
        cd ..
    end
    if [ -e ./$rcfile ]
        set rcfile (readlink -e ./$rcfile)
        popd
        env pylint --rcfile=$rcfile -r no $argv
    else
        popd
        echo "no $rcfile found"
        return 1
    end
end
