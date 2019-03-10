#!/usr/bin/env bash

#fake sudo to run root commands from other scripts

sudo() {
    for argument in "$@"; do
        if echo "$argument" | grep -w '\-.*' >/dev/null; then
            shift
        else
            echo "broke at $argument"
            break
        fi
    done
    echo "$@"
}
