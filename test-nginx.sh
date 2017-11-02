#!/bin/bash

echo " ----- HTTP ----- "
curl ingress.com
curl ingress.com/hello
curl ingress.com/goodbye

echo " ----- HTTPS ----- "
curl https://ingress.com -k
curl https://ingress.com/hello -k
curl https://ingress.com/goodbye -k
