FROM bellsoft/liberica-openjdk-alpine:21

# Install curl jq
# RUN apk add curl jq
RUN apk add --no-cache curl jq


# workspace
WORKDIR /home/udemy-selenium-docker

# Copy necessary files
COPY target/docker-resources/ ./docker-resources/
COPY runner.sh runner.sh

# Ensure runner.sh is executable
RUN chmod +x runner.sh

# Run script
ENTRYPOINT ["sh", "runner.sh"]

# Add the required files
# ADD target/docker-resources     ./
# ADD runner.sh                   runner.sh



# Start the runner.sh
# ENTRYPOINT sh runner.sh