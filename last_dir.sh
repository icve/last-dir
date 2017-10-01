write_ldr() {
    if [ "$PWD" != "$HOME" ]
    then
        pwd > ~/.last_dir
    fi
}

uldr() {
    trap - EXIT
}
 # only work on terminal started manually / ignore terminal started from file manager
if [ "$PWD" == "$HOME" ] && [ "$TERM" == screen ]
then
    cd "$(cat ~/.last_dir)"
    trap write_ldr EXIT
fi

