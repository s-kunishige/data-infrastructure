FROM openjdk:8-jre-bullseye

ENV EMBULK_VERSION 0.9.24
ENV DIGDAG_VERSION 0.10.4

RUN apt-get update && apt-get upgrade -y

# embulk
RUN curl -o /usr/local/bin/embulk -L "https://dl.embulk.org/embulk-${EMBULK_VERSION}.jar" \
    && chmod +x /usr/local/bin/embulk

# digdag
RUN curl -o /usr/local/bin/digdag -L "https://dl.digdag.io/digdag-${DIGDAG_VERSION}" \
    && chmod +x /usr/local/bin/digdag
    
# WORKDIR /workspace