#!/bin/bash
#
# Given input from keyboard (or bluefruit), take photo.

BUTTON_CHAR=${BUTTON_CHAR:-"a"}

# configure camera to use a 2s delayed shutter, if needed.
# TODO: fill in the necessary command.

echo "Waiting for input.."
while [[ 1 ]]; do
  read -n 1 char_read
  if [[ $char_read == $BUTTON_CHAR ]]; then
    echo "Taking photo."
    gphoto2 --capture-image-and-download --hook-script ./uploadhook.sh
    echo "done."
  fi
done
