#!/bin/bash

HOST="localhost"
PORT="5050"
API_KEY="YOUR_COUCHPOTATO_API_KEY"
SSL=false

if [ "$SSL" = true ] ; then
  PROTOCOL="https"
else
  PROTOCOL="http"
fi

curl "${PROTOCOL}://${HOST}:${PORT}/api/${API_KEY}/renamer.scan"