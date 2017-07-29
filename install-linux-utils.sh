#!/bin/sh
mkdir /usr/local/bin/bnd
cp -R . /usr/local/bin/bnd
chmod 775 -R /usr/local/bin/bnd

ln -s /usr/local/bin/bnd/replace-text.sh /usr/local/bin/replacetext