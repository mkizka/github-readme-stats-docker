FROM node:18-slim
ENV NODE_ENV production
WORKDIR /app
RUN apt update && apt install -y git
RUN git clone https://github.com/anuraghazra/github-readme-stats ./ && \
  npm i express
COPY server.js ./
CMD node server.js
