#!/bin/bash

cd "$(dirname "$0")"

dpkg-scanpackages -m ./debs > Packages

bzip2 -c Packages > Packages.bz2
gzip -c9 Packages > Packages.gz
xz -c9 Packages > Packages.xz

echo "Repo updated."
