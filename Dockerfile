FROM node:alpine

RUN mkdir -p /app
WORKDIR /app

RUN npm install -g nodemon
RUN npm config set registry https://registry.npmjs.org

COPY app/package.json /app/package.json

RUN npm install 
# && npm ls \
# && npm cache clean --force \
# && mv /app/node_modules /node_modules
COPY ./app/ /app

ENV PORT 3000
EXPOSE 3000

CMD ["node", "app.js"]
