FROM danielgran/steamcmd:latest

ARG STEAM_CREDS_USERNAME
ARG STEAM_CREDS_PASSWORD

EXPOSE 2302/udp
EXPOSE 2303/udp
EXPOSE 2304/udp
EXPOSE 2305/udp
EXPOSE 2306/udp

ENV INSTALL_PATH /arma3
WORKDIR ${INSTALL_PATH}

RUN steamcmd +force_install_dir ${INSTALL_PATH} +login $STEAM_CREDS_USERNAME $STEAM_CREDS_PASSWORD +app_update 233780 validate +quit
