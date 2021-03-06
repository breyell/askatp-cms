FROM node:12

WORKDIR /

COPY package.json yarn.lock ./

ENV NODE_ENV production

RUN yarn --frozen-lockfile

RUN yarn build

COPY . .

EXPOSE 1337

CMD ["yarn", "start"]
