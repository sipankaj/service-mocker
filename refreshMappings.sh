#!/bin/bash

echo "Updating Stubs...."
echo
type curl >/dev/null 2>&1 || { echo >&2 "Required curl but it's not installed. Aborting."; exit 1; }
echo

curl -s --request POST http://localhost:8080/__admin/reset
