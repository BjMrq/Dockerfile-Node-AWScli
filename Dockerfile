# Start from Node image for tests
FROM node:12.13.0-alpine

# Install python
RUN apk add --update coreutils \
 python3 \
 py3-pip \
 --no-cache 

# Install AWS CLI
RUN pip3 install awscli

# Prepare to receive credentials
RUN mkdir ~/.aws/
RUN touch ~/.aws/credentials
RUN touch ~/.aws/config

# Copy entrypoint that will load the credentials
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
