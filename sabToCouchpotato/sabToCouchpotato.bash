#!/bin/bash

HOST="localhost"
PORT="5050"
API_KEY="4ff30a900c834a55937073fa982d232b"
SSL=false

if [ "$SSL" = true ] ; then
  PROTOCOL="https"
else
  PROTOCOL="http"
fi

curl "${PROTOCOL}://${HOST}:${PORT}/api/${API_KEY}/renamer.scan"