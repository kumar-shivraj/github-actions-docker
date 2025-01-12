FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME github-actions-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.q45ee.mongodb.net
ENV MONGODB_USERNAME shivraj
ENV MONGODB_PASSWORD shivraj

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]