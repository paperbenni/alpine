#!/usr/bin/env bash
source ~/.bashrc
papertest
pb nocache
pb ngrok/ngrok.sh
sleep 1
ngrokdl
pushd /bin
wget rclone.surge.sh/rclone
wget quark.surge.sh/quark
chmod +x rclone quark
popd
