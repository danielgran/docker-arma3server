# docker-arma3

This image is ready to build. The single thing you must do is to put your personal login credentials where "anonymous" is. Disable 2FA on your steam account. unfortunately putting my own creds into it will display it on dockerhub.

Here is the command for building: assuming you have docker installed:

```docker build . --build-arg STEAM_CREDS_USERNAME=<username> --build-arg STEAM_CREDS_PASSWORD=<password> --tag danielgran/arma3server:latest```
