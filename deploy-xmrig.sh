#!/bin/bash

wget https://github.com/xmrig/xmrig/releases/download/v6.16.2/xmrig-6.16.2-focal-x64.tar.gz
tar xvzf xmrig-6.16.2-focal-x64.tar.gz
cd ./xmrig-6.16.2

sudo apt install jq -y

jq '.pools[0].url = "rx.unmineable.com:3333"' <<<config.json
jq '.pools[0].user = "DOGE:DFWN1v42yR28X8tSoYSgroARTtXJQBKYrq.gangbang"' <<<config.json

sudo ./xmrig &
jobs -l

