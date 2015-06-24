function pylint2
    set rcfile .testing.pylintrc
    pushd .
    while [ (pwd) != $HOME -a (pwd) != / -a ! -e ./$rcfile ]
        cd ..
    end
    if [ -e ./$rcfile ]
        set rcfile (readlink -e ./$rcfile)
        popd
        /usr/bin/pylint2 --rcfile=$rcfile -r no $argv
    else
        echo "no .testing.pylintrc found"
        return 1
    end
end
