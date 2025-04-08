#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

chmod +x /usr/bin/papirus-folders

/usr/bin/papirus-folders -C green --theme Papirus-Dark
/usr/bin/papirus-folders -C green --theme Papirus
/usr/bin/papirus-folders -C green --theme ePapirus