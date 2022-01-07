#!/bin/bash -e


WORKSPACE="${GITHUB_WORKSPACE:=/usr/local}"
VERSION=${version:=v0.32.0}
ARCHIVESUFFIX=linux-amd64.gz
URL=https://github.com/gardener/component-cli/releases/download
ARCHIVEFILE="componentcli-$ARCHIVESUFFIX"
FILE="$(basename "$ARCHIVEFILE" .gz)"
TARGET=${WORKSPACE}/bin/ocm

echo "Install Open Component Model Tool version $version"
cd /tmp
rm -f "$ARCHIVEFILE"
wget "$URL/$VERSION/$ARCHIVEFILE"
gunzip -f "$ARCHIVEFILE"
cp "$FILE" "$TARGET"
chmod a+x "$TARGET"
echo "::set-output name=ocm-path::$TARGET"
