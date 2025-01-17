FROM node:18.5.0-alpine as builder
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci
COPY app.js ./

FROM node:18.5.0-alpine
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app .
EXPOSE 3000
USER node
ENTRYPOINT ["node", "app.js"]
