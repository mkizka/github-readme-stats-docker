FROM node:18-slim
ENV NODE_ENV production
WORKDIR /app
RUN apt update && apt install -y git
COPY . .
CMD ./start.sh
