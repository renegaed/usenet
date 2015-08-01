#!/bin/bash

HOST="localhost"
PORT="5050"
API_KEY="YOUR_KEY_HERE"

curl "${HOST}:${PORT}/api/${API_KEY}/renamer.scan"