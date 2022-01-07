#!/bin/sh -e

WORKSPACE="${GITHUB_WORKSPACE:=/usr/local}"
WORKSPACE="/usr/local"
VERSION=${version:=v0.32.0}
REPO=${repo:=gardener/component-cli}
ARCHIVESUFFIX=linux-amd64.gz
URL=https://github.com/$REPO/releases/download
ARCHIVEFILE="componentcli-$ARCHIVESUFFIX"
FILE="$(basename "$ARCHIVEFILE" .gz)"
TARGET=${WORKSPACE}/bin/ocm

cd /tmp
echo "Install Open Component Model Tool version $version"
rm -f "$ARCHIVEFILE"
wget -q "$URL/$VERSION/$ARCHIVEFILE"
gunzip -f "$ARCHIVEFILE"
mkdir -p "$(dirname "$TARGET")"
cp "$FILE" "$TARGET"
chmod a+x "$TARGET"
echo "installed into $TARGET"
echo "::set-output name=ocm-path::$TARGET"
