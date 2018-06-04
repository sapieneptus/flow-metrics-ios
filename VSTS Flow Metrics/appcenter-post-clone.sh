#!/usr/bin/env bash

set -ex
echo "Running post-clone script"
echo $APP_SECRET > VSTS\ Flow\ Metrics/Secrets/app_secret.txt
