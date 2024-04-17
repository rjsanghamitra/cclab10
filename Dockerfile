# specifying the base images to fetch from the docker registry
FROM node:21-alpine

WORKDIR /dockerlab

COPY public/ /dockerlab/public
COPY src/ /dockerlab/src
COPY package.json /dockerlab/package.json

EXPOSE 5173

RUN npm install

# command that will be run first after starting the container
CMD ["npm", "run", "dev"]