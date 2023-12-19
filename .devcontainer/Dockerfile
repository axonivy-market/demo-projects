FROM mcr.microsoft.com/devcontainers/base:bookworm

ARG IVY_ENGINE_DOWNLOAD_URL
ARG IVY_HOME=/usr/lib/axonivy-engine

RUN apt-get update && \
    apt-get install -y wget unzip && \
    rm -rf /var/lib/apt/lists/* && \
    \
    wget ${IVY_ENGINE_DOWNLOAD_URL} -O /tmp/ivy.zip --no-verbose && \
    unzip /tmp/ivy.zip -d ${IVY_HOME} && \
    rm -f /tmp/ivy.zip && \
    \
    mkdir ${IVY_HOME}/applications && \
    mkdir ${IVY_HOME}/configuration/applications && \
    chown -R vscode:0 ${IVY_HOME} && \
    \
    chmod -R g=u ${IVY_HOME}
