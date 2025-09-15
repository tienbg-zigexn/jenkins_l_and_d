FROM jenkins/jenkins:lts

USER root

RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash
RUN apt-get update \
  && apt-get install -yq --no-install-recommends ansible-core nodejs \
  && npm install -g firebase-tools \
  && rm -rf /var/lib/apt/lists/*

USER jenkins
