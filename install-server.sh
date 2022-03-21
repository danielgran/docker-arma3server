#/bin/bash

steamcmd +force_install_dir ${INSTALL_PATH} +login $STEAM_CREDS_USERNAME $STEAM_CREDS_PASSWORD +app_update 233780 validate +quit