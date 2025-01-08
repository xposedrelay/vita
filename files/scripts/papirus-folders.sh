#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

/usr/bin/papirus-folders -C green --theme Papirus-Dark
/usr/bin/papirus-folders -C green --theme Papirus
/usr/bin/papirus-folders -C green --theme ePapirus