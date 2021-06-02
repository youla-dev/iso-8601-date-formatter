xcodebuild archive \
  -scheme "ISO8601DateFormatter" \
  -sdk iphoneos \
  -archivePath "archives/ios_devices.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO
  
xcodebuild archive \
  -scheme "ISO8601DateFormatter" \
  -sdk iphonesimulator \
  -archivePath "archives/ios_simulators.xcarchive" \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
  SKIP_INSTALL=NO

xcodebuild -create-xcframework \
    -framework archives/ios_devices.xcarchive/Products/Library/Frameworks/ISO8601.framework \
   -framework archives/ios_simulators.xcarchive/Products/Library/Frameworks/ISO8601.framework \
  -output ISO8601.xcframework
