#!/usr/bin/env zsh

# --- run chmod +x build.sh N then ./build.sh > cache.appcache
set -euo pipefail

FILES=(
  index.html
  install.html
  cache.html
  jb.html
  Logo.png
  jb.js
  core.js
  mem.js
  int64.js
  ps4_offsets.js
  rpc_worker.js
  hen.bin
  goldhen.bin
  ps4debug.bin
  patches/1100.bin
  patches/1150.bin
  patches/1200.bin
  patches/1250.bin
  patches/1300.bin
  patches/1302.bin
  patches/1350.bin
  patches/1352.bin
)

echo "CACHE MANIFEST"
echo "# rev $(date -u +%Y%m%d)-nkoten-layout"
echo

for f in "${FILES[@]}"; do
  h="$(sha256sum "$f" | cut -d' ' -f1)"
  printf '%s #%s\n' "$f" "$h"
done

# aliases cache-buster (mesmo hash do arquivo base)
printf 'core.js?v=10 #%s\n' "$(sha256sum core.js | cut -d' ' -f1)"
printf 'jb.js?v=10 #%s\n' "$(sha256sum jb.js | cut -d' ' -f1)"

echo
echo "NETWORK:"
echo "*"
echo
echo "FALLBACK:"
echo "index.html index.html"
echo "install.html install.html"
echo "jb.html jb.html"
echo "cache.html cache.html"
