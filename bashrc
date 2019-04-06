#!/usr/bin/env bash

sudo() {
    for argument in "$@"; do
        if echo "$argument" | grep -q -w '\-.*'; then
            shift
        else
            echo "running $argument"
            break
        fi
    done
    eval "$@"
}

papertest() {
        source <(curl -s https://raw.githubusercontent.com/paperbenni/bash/master/import.sh)
}
