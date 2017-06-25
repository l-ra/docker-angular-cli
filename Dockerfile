FROM node:latest
MAINTAINER martin scharm <https://binfalse.de>

# install some common dependencies
RUN npm install --silent -g @angular/cli findup-sync typescript >> /dev/null 2>>/dev/null


WORKDIR /usr/src/app
VOLUME /usr/src/app
EXPOSE 4200

# compile the app and run it
CMD npm install && npm start


