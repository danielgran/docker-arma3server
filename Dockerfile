FROM danielgran/steamcmd:latest

ARG STEAM_CREDS_USERNAME
ARG STEAM_CREDS_PASSWORD
ENV INSTALL_PATH /arma3
WORKDIR ${INSTALL_PATH}

COPY install-server.sh .
RUN chmod +x install-server.sh && \
    ./install-server.sh && \
    apt update && \
    apt install -y lsb-release gnupg && \
    export DEBIAN_FRONTEND="noninteractive" && \
    wget https://repo.mysql.com/mysql-apt-config_0.8.22-1_all.deb && \
    dpkg -i -E mysql-apt-config_0.8.22-1_all.deb && \
    apt update && \
    apt upgrade -y && \
    apt install -y libtbb2 libmysqlcppconn-dev mysql-shell mysql-client