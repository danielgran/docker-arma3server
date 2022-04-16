FROM danielgran/steamcmd:latest

ARG STEAM_CREDS_USERNAME
ARG STEAM_CREDS_PASSWORD
ENV INSTALL_PATH /arma3
WORKDIR ${INSTALL_PATH}

COPY install-server.sh .
RUN chmod +x install-server.sh && \
    ./install-server.sh