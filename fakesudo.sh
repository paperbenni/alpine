#!/usr/bin/env bash
for argument in "$@"; do
    if echo "$argument" | grep -q -w '\-.*'; then
        shift
    else
        echo "running $argument"
        break
    fi
done
eval "$@"
