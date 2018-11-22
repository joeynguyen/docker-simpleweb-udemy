# use an existing image as a base
FROM node:alpine

# specify current working directory of image
WORKDIR /usr/app

# download and install a dependency
COPY ./package.json ./
RUN npm install

# copy app files into image
COPY ./index.js ./

# tell the image what to do when it starts as a container
CMD ["npm", "start"]
