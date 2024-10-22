FROM node:18
VOLUME /output
USER node
WORKDIR /home/node
RUN git clone "https://github.com/luttje/glua-api-snippets" ./project &&\
    npm install --prefix ./project
WORKDIR /home/node/project
