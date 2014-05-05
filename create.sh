#!/bin/bash
dirbasename=${PWD##*/}
WIDGETNAME=$dirbasename".wdgt"

if [ -d "$WIDGETNAME" ] ; then
    echo "Wipe existing folder $WIDGETNAME"
    rm -rfv "$WIDGETNAME"
fi

echo "creating folder $WIDGETNAME"
mkdir "$WIDGETNAME" 

echo copying everything except "$WIDGETNAME"  to "$WIDGETNAME" 
cp -rv `ls -A | grep -vE ".git|$WIDGETNAME"` "$WIDGETNAME" 
