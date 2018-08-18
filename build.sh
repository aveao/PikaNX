#!/bin/sh

# PikaNX's build script
# DO NOT TRY AND RUN THIS!!!
# This was specifically made for BSNX.
# Thanks!

mkdir build && cd build
mkdir atmosphere
mkdir atmosphere/titles
mkdir atmosphere/titles/0100000000000036
mkdir atmosphere/titles/0100000000000036/exefs
mkdir atmosphere/exefs_patches
mkdir PikaNX
mkdir switch
mkdir ftpd

cp /var/lib/jenkins/workspace/hekate-ctcaer-master/ipl.bin CFW.bin
cp /var/lib/jenkins/workspace/atmosphere-patched/stratosphere/creport/creport.nso atmosphere/titles/0100000000000036/exefs/main
cp /var/lib/jenkins/workspace/atmosphere-patched/stratosphere/creport/creport.npdm atmosphere/titles/0100000000000036/exefs/main.npdm
cp /var/lib/jenkins/workspace/atmosphere-patched/stratosphere/loader/loader.kip PikaNX/loader.kip
cp /var/lib/jenkins/workspace/atmosphere-patched/stratosphere/fs_mitm/fs_mitm.kip PikaNX/fs_mitm.kip
cp /var/lib/jenkins/workspace/atmosphere-patched/stratosphere/pm/pm.kip PikaNX/pm.kip
cp /var/lib/jenkins/workspace/atmosphere-patched/stratosphere/sm/sm.kip PikaNX/sm.kip
cp /var/lib/jenkins/workspace/sys-ftpd/sys-ftpd.kip PikaNX/sys-ftpd.kip
cp /var/lib/jenkins/workspace/sys-ftpd/sd_card/ftpd/* ftpd/
cp /var/lib/jenkins/workspace/tinfoil/tinfoil.nro switch/tinfoil.nro
cd ../
cp -r "Fake Tickets" build/atmosphere/exefs_patches
cp README.txt build
cd build
export DATE=$(date +%s | cut -c 1-8)
zip -r9 PikaNX-$DATE.zip .
mv PikaNX-$DATE.zip /var/www/bsnx/PikaNX
