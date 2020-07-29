FROM strapi/base

WORKDIR /

COPY ./package.json ./

RUN yarn

ENV NODE_ENV production

RUN yarn build

COPY . .

EXPOSE 1337

CMD ["yarn", "start"]
