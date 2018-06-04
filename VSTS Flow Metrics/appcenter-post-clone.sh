#!/usr/bin/env bash

set -ex

dir=$(dirname "${0}")
scriptname=$(basename "${0}")
echo "Running $scriptname script"
echo $APP_SECRET > "${dir}/VSTS Flow Metrics/Secrets/app_secret.txt"
