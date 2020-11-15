A simple nodejs docker container to show case how to dockarize a running project and deploy to `docker hub`

## How to use

You only need docker to be installed to run the project, no need for nodejs as it will be installed as part of the dependencies within the container as specified in `Dockerfile`

```bash

# to build a fresh docker image
# it executes `docker build -t <dockerhub-username>/my-node-playground .`
yarn build:image

# To run the image inside a container
# it executes `docker run -it -p 3000:3000 <dockerhub-username>/my-node-playground`
yarn run:image

# To push the new image to
# run `docker login` if it's your first time
# it executes `docker push <dockerhub-username>/my-node-playground`
yarn docker:push

```
