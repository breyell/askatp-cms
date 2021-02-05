FROM node:14

WORKDIR /

COPY ./package.json ./

COPY ./yarn.lock ./

ENV NODE_ENV production

RUN yarn --frozen-lockfile

RUN yarn build

COPY . .

EXPOSE 1337

CMD ["yarn", "start"]
