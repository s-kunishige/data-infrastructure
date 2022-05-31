FROM openjdk:8-jre-bullseye

RUN apt-get update && apt-get upgrade 
    # && apt-get install sqlite3

# embulk
RUN curl -o /usr/local/bin/embulk -L "https://dl.embulk.org/embulk-latest.jar" \
    && chmod +x /usr/local/bin/embulk
RUN embulk gem install embulk-input-postgresql \
    && embulk gem install embulk-output-sqlite3

# digdag
RUN curl -o /usr/local/bin/digdag -L "https://dl.digdag.io/digdag-latest" \
    && chmod +x /usr/local/bin/digdag
    
# WORKDIR /workspace