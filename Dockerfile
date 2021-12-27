FROM node:14

WORKDIR /

COPY package.json yarn.lock ./

ENV NODE_ENV production

RUN yarn install --frozen-lockfile

RUN yarn build

COPY . .

EXPOSE 1337

CMD ["yarn", "start"]
