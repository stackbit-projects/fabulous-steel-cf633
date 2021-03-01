#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://api.stackbit.com/project/603cf633d9b35b0015d977de/webhook/build/pull > /dev/null
curl -s -X POST https://api.stackbit.com/project/603cf633d9b35b0015d977de/webhook/build/ssgbuild > /dev/null
gatsby build
curl -s -X POST https://api.stackbit.com/project/603cf633d9b35b0015d977de/webhook/build/publish > /dev/null
