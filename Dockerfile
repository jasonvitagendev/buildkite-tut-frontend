FROM node:20
WORKDIR /app
COPY package.json yarn.lock ./

RUN \
    yarn install --frozen-lockfile --ignore-optional --non-interactive && \
    yarn cache clean
