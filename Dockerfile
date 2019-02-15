FROM node:carbon

# Create app directory
WORKDIR /usr/src/app

# Bundle app source
COPY . .

# npm install
RUN apt-get update && npm install
# Run npm install --global grpc --unsafe-perm

EXPOSE 3005 9230

CMD [ "npm", "install" ]

CMD [ "npm", "run", "build" ]

CMD [ "npm", "run", "debug" ]