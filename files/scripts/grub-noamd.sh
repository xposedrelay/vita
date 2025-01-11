#!/bin/sh

FILE_PATH="/etc/default/grub"
CONTENT="GRUB_TIMEOUT=5
GRUB_DISTRIBUTOR="$(sed 's, release .*$,,g' /etc/system-release)"
GRUB_DEFAULT=saved
GRUB_DISABLE_SUBMENU=true
GRUB_TERMINAL_OUTPUT="console"
GRUB_DISABLE_RECOVERY=true
GRUB_ENABLE_BLSCFG=true"
echo "$CONTENT" > $FILE_PATH
