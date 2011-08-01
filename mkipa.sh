BUNDLE="$1"
TIMETAG=`date +%y%m%d%H%M`
OUT="$2-$TIMETAG.ipa"

if [ $# -ne 2 ] || [ ! -d "$BUNDLE" ]
then
  echo 'Usage: mkipa <path_to_app_bundle> <output_ipa_name>'
  echo 'Example: mkipa build/Distribution\ (Ad\ Hoc)-iphoneos/MyApp.app MyAppAdHoc'
else
  if [ ! -f "$BUNDLE/Entitlements.plist" ]
  then
    echo 'Warning: Your .app bundle appears to be missing an Entitlements file'
    echo 'Are you sure it is an ad hoc build?'
  fi
  
  if [ -f "$OUT" ]
  then
    read -s -n1 -p "$OUT already exists, overwrite it? [y/n]: " keypress
    echo
    if [ "$keypress" != 'y' ]
    then
      echo "aborting"
    fi
  fi
  
  TEMP=`mktemp -d ipaXXX`
  PAYLOAD="$TEMP/Payload"
  
  # the real work
  mkdir $PAYLOAD
  cp -r "$BUNDLE" $PAYLOAD
  cd $TEMP
  zip -rq "$OUT" Payload
  cp "$OUT" ..
  cd ..
  
  # clean up
  rm -rf $TEMP
fi
