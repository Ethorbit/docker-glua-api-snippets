FROM node:18
ARG UID=1000
ARG GID=1000
VOLUME /output
RUN groupmod -g ${GID} node &&\
    usermod -u ${UID} node
USER node
WORKDIR /home/node
RUN git clone "https://github.com/luttje/glua-api-snippets" ./project &&\
    npm install --prefix ./project
WORKDIR /home/node/project
