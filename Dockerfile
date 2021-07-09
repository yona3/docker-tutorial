FROM node:12-alpine
RUN apk --no-cache --virtual build-dependencies add \
        python \
        g++ \
        make
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
