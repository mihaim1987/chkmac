#!/bin/bash
ApiKeyMACADDR=1

[ $# -eq 0 ] && { echo "Usage: $0 MAC address"; exit 1; }

for MAC in "$@"
do
  echo "$@ - $(curl --silent --url "https://api.macaddress.io/v1?apiKey=$ApiKeyMACADDR&output=vendor&search=$MAC")"
done
