FROM bellsoft/liberica-openjdk-alpine:21

# Install curl jq
RUN apk add curl jq

# workspace
WORKDIR /home/udemy-selenium-docker

# Add the required files
ADD target/docker-resources     ./
ADD runner.sh                   runner.sh

# Start the runner.sh
ENTRYPOINT sh runner.sh