#!/usr/bin/env bash

#
# This must be executed at before_plugin_install time
#
# Will download the TestFairy SDK ZIP and extract it into the
# plugins src/ios/TestFairy directory. From there on cordova
# will add it to the corresponding platform plugins directory
# as if the TestFairy files were present in the plugin's repository.
#
# Note: The plugin will only download the SDK ZIP once per install
#       If you need to force a download, remove the file manually
#       from $TARGET_ZIP
#

# the SDK fully qualified URL, including the actual filename
SDK_URL=https://app.testfairy.com/sdk/ios/download/latest/

# the relative directory from the project root 
PLUGIN_DIR=./plugins/com.testfairy.cordova

# the target filename for download
TARGET_ZIP=/tmp/TestFairySDK-latest.zip

# the target path where to extract the SDK zip
TARGET_SRC=$PLUGIN_DIR/src/ios/TestFairy

# be nice and download only if we didn't yet
if [ ! -f $TARGET_ZIP ]; then
 echo "[INFO] Downloading Testfairy SDK for iOS from $SDK_URL to $TARGET_ZIP"
 curl -L $SDK_URL -o $TARGET_ZIP 
fi

echo "[INFO] Installing Testfairy SDK for iOS from $TARGET_ZIP to $TARGET_SRC"
unzip -o $TARGET_ZIP -d $TARGET_SRC 
