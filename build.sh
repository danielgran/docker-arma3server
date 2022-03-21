#!/bin/bash

echo "Please enter valid Steam credentials."
echo "Disable the Steam Authenticator (Steam Guard) if you have it enabled."
echo "Username: "
read username
echo "Password: "
read password

docker build --build-arg STEAM_CREDS_USERNAME=$username --build-arg STEAM_CREDS_PASSWORD=$password -t ruan:test . -t danielgran/arma3:latest