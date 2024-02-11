#!/bin/bash

FILENAME="loadedModule-$(date -I).txt"

cd ~/Downloads
echo "Printing currently loaded modules for date: $(date -I)"
kmutil showloaded >> $FILENAME-110224.txt
echo "Saved $FILENAME to file in location: $(pwd)"