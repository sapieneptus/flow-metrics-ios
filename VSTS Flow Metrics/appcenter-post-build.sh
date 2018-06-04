#!/usr/bin/env bash

set -ex

dir=$(dirname "${0}")
cd "${dir}"
scriptname=$(basename "${0}")
echo "Running $scriptname script"

derived_data_dir="DerivedData"
workspace="VSTS Flow Metrics.xcworkspace"
scheme="VSTS Flow Metrics"
devices="VSTS-Flow/popular-iphones"
app="VSTS-Flow/VSTS-Flow-Metrics"

#
# Build project for testing
#

if [ -d "${derived_data_dir}" ]; then
  rm -rf "${derived_data_dir}"
fi

xcrun xcodebuild build-for-testing \
      -configuration Debug \
      -workspace "${workspace}" \
      -sdk iphoneos \
      -scheme "${scheme}" \
      -derivedDataPath "${derived_data_dir}"

#
# Upload XCUITest to App Center
#
appcenter test run xcuitest \
  --app "${app}" \
  --devices "${devices}" \
  --test-series "master" \
  --locale "en_US" \
  --build-dir DerivedData/Build/Products/Debug-iphoneos \
  --token "${API_TOKEN}"
#
