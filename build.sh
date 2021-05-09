#!/usr/bin/env bash
set -x
set -eo pipefail

docker build -t afodil/tooled-rust .
docker push afodil/tooled-rust