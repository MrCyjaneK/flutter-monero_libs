#!/bin/bash
set -e
make clean
cat pubspec.yaml.template | sed 's/@coin@/monero/g' > pubspec.yaml
COIN=monero make libs version
dart pub publish --skip-validation

make clean
cat pubspec.yaml.template | sed 's/@coin@/wownero/g' > pubspec.yaml
COIN=wownero make libs version
dart pub publish --skip-validation

make clean