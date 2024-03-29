#!/bin/bash
SCREENSHOT_FILE_NAME="Screenshot.png"

cd ~/Pictures
ls -la && sleep 0.5

# find $SCREENSHOT_FILE_NAME -print

if [ -f $SCREENSHOT_FILE_NAME ]; then
    rm $SCREENSHOT_FILE_NAME
    echo "$SCREENSHOT_FILE_NAME removed."
else
    echo "$SCREENSHOT_FILE_NAME does not exist."
fi

echo Removing additional screenshots.
for FILE in `find . -iname "screenshot-*" -type f -print`
do
    # REMOVE SCREENSHOTS
    rm $FILE
done

if [ ! `find . -iname "screenshot-*" -type f` ]; then
    echo All screenshots removed.
    else
    echo Some screenshots remain. Re-run script.
fi
