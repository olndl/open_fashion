#!/bin/sh

ENTRYPOINT=""
PLIST_LOCATION=$RUNNER_TEMP/options.plist

case $2 in
  dev) ENTRYPOINT="src/app/entrypoints/main_dev.dart";;
  qa) ENTRYPOINT="src/app/entrypoints/main_qa.dart";;
  prod) ENTRYPOINT="src/app/entrypoints/main_prod.dart";;
esac

FLAGS="$1 --flavor $2 -t $GITHUB_WORKSPACE/lib/$ENTRYPOINT $3 $4 $5"
echo "Requested Flavour: $2"
echo "GoogleService-Info.plist for ios..."

GOOGLESERVICE_INFO_PLIST=GoogleService-Info.plist
GOOGLESERVICE_INFO_FILE=$GITHUB_WORKSPACE/ios/config/$2/${GOOGLESERVICE_INFO_PLIST}

echo "Looking for ${GOOGLESERVICE_INFO_PLIST} in ${GOOGLESERVICE_INFO_FILE}"
if [ ! -f $GOOGLESERVICE_INFO_FILE ]
then
echo "No GoogleService-Info.plist found. Please ensure it's in the proper directory."
exit 1
fi

PLIST_DESTINATION=${BUILT_PRODUCTS_DIR}/${PRODUCT_NAME}.app
echo "Will copy ${GOOGLESERVICE_INFO_PLIST} to final destination: ${PLIST_DESTINATION}"

echo "Setting entrypoint: $GITHUB_WORKSPACE/lib/$ENTRYPOINT"
echo "Building $1 .......... "
echo ""
if [ $1 == ipa ]
then
  sed -i '' "s#.*entrypoints/main.*#import 'package:open_fashion/$ENTRYPOINT' as entrypoint;#" lib/main.dart
  FLAGS="$FLAGS --export-options-plist=$PLIST_LOCATION"
elif [ $1 == ios ]
then
  sed -i '' "s#.*entrypoints/main.*#import 'package:open_fashion/$ENTRYPOINT' as entrypoint;#" lib/main.dart
fi
echo "************************************************************************************************************"
echo "Running flutter build $FLAGS"
echo "************************************************************************************************************"

flutter build $FLAGS