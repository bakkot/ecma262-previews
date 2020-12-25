#! /bin/bash

set -o nounset
set -o errexit
set -x

CWD=`pwd`
cd ../ecma262
npm run build-only
node scripts/insert_snapshot_warning.js
echo ${CWD}
cp -r out ${CWD}/docs/`git rev-parse --short HEAD`
