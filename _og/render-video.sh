#!/bin/sh
# Records og-image.html's live phone demo (trains counting down, a tap into the
# 6 express, the Lines tab) to img/og-video.mp4 (1200x630). The demo loops every
# 19.5s, so the video does too. The left side is pasted from img/og-image.png so
# the headline keeps the Mac's Helvetica Neue wherever this runs.
# Needs: pip3 install playwright && python3 -m playwright install chromium, and ffmpeg.
# After re-rendering, bump ?v= on the og:video tags.
cd "$(dirname "$0")" || exit 1
python3 record.py og-image.html ../img/og-video.mp4 --seconds 19.5 \
  --overlay ../img/og-image.png --overlay-width 1400 \
  --css '@font-face { font-family: "Helvetica Neue"; font-weight: 100 549; src: local("Helvetica Neue"), local("HelveticaNeue"), local("TeX Gyre Heros"), local("TeXGyreHeros-Regular"); }
         @font-face { font-family: "Helvetica Neue"; font-weight: 550 900; src: local("Helvetica Neue Bold"), local("HelveticaNeue-Bold"), local("TeX Gyre Heros Bold"), local("TeXGyreHeros-Bold"); }'
