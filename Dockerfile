FROM node:lts-alpine as builder

WORKDIR /api

ARG NODE_ENV=production
ENV NODE_ENV=${NODE_ENV}

COPY ./ .

RUN yarn
RUN yarn build

EXPOSE 1010

CMD ["yarn", "start"]
