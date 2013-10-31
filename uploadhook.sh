#!/bin/bash
# gphoto2 hook script to upload to dropbox

if [[ $ACTION == "download" ]]; then
  # $ARGUMENT is the file we just downloaded.
  ./dropbox_uploader.sh -q -s upload $ARGUMENT
fi
