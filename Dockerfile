FROM node:alpine
RUN apk --no-cache add curl

WORKDIR /usr/app/
ENV NODE_ENV=production
EXPOSE 3000

COPY package.json .
RUN yarn install

COPY . .
CMD [ "yarn", "start" ]