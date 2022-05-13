FROM node
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8000
RUN export PORT=8000
CMD [ "node", "server"]
