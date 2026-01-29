#!/bin/bash
echo "[RTAG] Applying autonomous fixes..."

# Fix android:exported
grep -q android:exported app/src/main/AndroidManifest.xml || \
sed -i 's/<activity/<activity android:exported="true"/' app/src/main/AndroidManifest.xml

# Ensure repos only in settings.gradle
sed -i '/google()/d' build.gradle

echo "[RTAG] Fixes applied."
