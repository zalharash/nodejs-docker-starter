# Based this contianer on the NodeJs container from docker hub
FROM node:12

# 1. Specify the container's working directory
WORKDIR /user/src/app

# 2. Copy package-lock and package-lock from source to dest (WORKDIR)
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json yarn.lock ./

# 3. install dependecies
RUN yarn

# If you are building your code for production
# RUN npm ci --only=production
# OR with YARN
# RUN rm -rf node_modules && yarn install --frozen-lockfile


# 4. copy the rest of files from source to container
COPY . .

# 5. Expose a port from inside a container to be mapped to external one
EXPOSE 3000

# 6. finally run commands (e.i CMD [ "/bin/ls", "-l" ])
CMD ["yarn", "start"]