#!/bin/bash

set -euo pipefail

VERSION=1.0.0
EXTENSION=codesnippet
NAME="Snippets"
DOWNLOAD_URI=https://github.com/bssl/Snippets/archive/${NAME}.tar.gz
DIR="${HOME}/Library/Developer/Xcode/UserData/CodeSnippets"

mkdir -p "${DIR}"
curl -L $DOWNLOAD_URI | tar xvz -C "${DIR}";cp -r "${DIR}/${NAME}/Snippets/" "${DIR}"
