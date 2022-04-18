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

COPY install-server.sh .
RUN chmod +x install-server.sh && \
    ./install-server.sh