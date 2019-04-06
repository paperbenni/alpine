#!/usr/bin/env bash
echo "running tests"
~/ngrok/ngrok --version || exit 1
rclone --version || exit 1
command -v quark || exit 1
