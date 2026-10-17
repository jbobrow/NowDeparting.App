#!/bin/sh
# Renders _og/og-image.html to img/og-image.png (2400x1260) with the Mac's own
# Helvetica Neue. Reduced motion freezes the phone demo on the Nearby list.
# After re-rendering, bump ?v= on the og:image / twitter:image tags.
cd "$(dirname "$0")/.." || exit 1
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  --headless --hide-scrollbars --force-prefers-reduced-motion \
  --window-size=1200,630 --force-device-scale-factor=2 \
  --virtual-time-budget=2000 \
  --screenshot="$PWD/img/og-image.png" \
  "file://$PWD/_og/og-image.html"
