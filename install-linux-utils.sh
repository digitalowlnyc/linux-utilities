#!/bin/sh
mkdir /usr/local/bin/bnd
cp -R . /usr/local/bin/bnd
chmod -R 775 /usr/local/bin/bnd

ln -s /usr/local/bin/bnd/replace-text.sh /usr/local/bin/replacetext
ln -s /usr/local/bin/bnd/append-once.sh /usr/local/bin/appendonce
ln -s /usr/local/bin/bnd/variable-reader.sh /usr/local/bin/variableread