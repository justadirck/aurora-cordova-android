cordova build android --release -- --packageType=apk
keytool -genkeypair -keystore app-release.keystore -alias app-release-alias -keyalg RSA -keysize 2048 -validity 10000 
apksigner sign --ks app-release.keystore --ks-pass pass:app-release-pass --out app-release-signed.apk app-release-unsigned.apk
apksigner verify app-release-signed.apk
zipalign -v 4 app-release-signed.apk app-release-aligned.apk




