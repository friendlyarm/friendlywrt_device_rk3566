#!/bin/bash
set -eu
ROOTFS_DIR=$1

(cd ${ROOTFS_DIR} && {
	[ -e etc/modules.d/21-r8169 ] && rm etc/modules.d/21-r8169
	echo 'r8168' > etc/modules.d/21-r8168
})
