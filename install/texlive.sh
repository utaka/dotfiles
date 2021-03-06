#!/bin/bash

set -eux

mkdir tmp
cd tmp/

#
# Install TeX Live
#
(
curl -LO http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar xvf install-tl-unx.tar.gz
cd install-tl-20*
# No gui, No interaction
./install-tl -no-gui -N
# Add symlink from //usr/local/texlive/20??/bin/x86_64-linux/* to /usr/local/bin
/usr/local/texlive/20??/bin/*/tlmgr path add
)

#
# Install jlisting
#
(
curl -LO https://osdn.net/projects/mytexpert/downloads/26068/jlisting.sty.bz2
bzip2 -d jlisting.sty.bz2
chmod 644 jlisting.sty
mkdir -p "$(kpsewhich -var-value TEXMFLOCAL)/tex/latex/jlisting/"
mv jlisting.sty "$_"
cd "$_"
mktexlsr
)

cd ..
rm -r tmp/

