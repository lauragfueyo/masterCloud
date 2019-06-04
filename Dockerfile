FROM ubuntu:18.04
WORKDIR /opt/app
COPY . .

RUN apt-get update
RUN apt-get -qq update
RUN apt-get install -y nodejs npm
RUN npm install --only=production
RUN update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

LABEL maintainer="Laura Gonzalez Fueyo"

EXPOSE 8888
CMD ["npm", "start"]