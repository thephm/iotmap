FROM node:latest
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install --no-optional --no-shrinkwrap --no-package-lock
COPY . /usr/src/app
EXPOSE 3000
CMD [ "npm", "start" ]