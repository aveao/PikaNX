#!/bin/sh

# PikaNX's build script
# DO NOT TRY AND RUN THIS!!!
# This was specifically made for BSNX.
# Thanks!

mkdir build && cd build
cp /var/lib/jenkins/workspace/hekate-ctcaer-master/ipl.bin CFW.bin
cp /var/lib/jenkins/workspace/atmosphere-patched/stratosphere/creport/creport.nso atmosphere/titles/0100000000000036/exefs/main
cp /var/lib/jenkins/workspace/atmosphere-patched/stratosphere/creport/creport.npdm atmosphere/titles/0100000000000036/exefs/main.npdm
cp /var/lib/jenkins/workspace/atmosphere-patched/stratosphere/loader/loader.kip PikaNX/loader.kip
cp /var/lib/jenkins/workspace/atmosphere-patched/stratosphere/fs_mitm/fs_mitm.kip PikaNX/fs_mitm.kip
cp /var/lib/jenkins/workspace/atmosphere-patched/stratosphere/loader/pm.kip PikaNX/pm.kip
cp /var/lib/jenkins/workspace/atmosphere-patched/stratosphere/loader/pm.kip PikaNX/sm.kip
cp /var/lib/jenkins/workspace/sys-ftpd/sys-ftpd.kip PikaNX/sys-ftpd.kip
cp -r /var/lib/jenkins/workspace/sys-ftpd/sd_card .
cp /var/lib/jenkins/workspace/tinfoil/Tinfoil.nro switch/Tinfoil.nro
cp -r "../Fake Tickets" atmosphere/exefs_patches
cp ../README.txt .
export DATE=$(date +%s | cut -c 1-8)
zip -r9 PikaNX-$DATE .
mv PikaNX-$DATE.zip /var/www/bsnx/PikaNX
