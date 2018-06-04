#!/usr/bin/env bash

set -ex
echo "Running $(basename $0) script"
echo $APP_SECRET > VSTS\ Flow\ Metrics/Secrets/app_secret.txt
