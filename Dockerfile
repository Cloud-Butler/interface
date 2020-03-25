# Define base image.
FROM python:3.5-alpine

# Install dependencies for CogCtl.
RUN apk --update --no-cache add \
    zlib-dev \
    musl-dev \
    libc-dev \
    gcc \
    git \
    pwgen \
    && pip install --upgrade pip

# Setup bundle user and directory.
RUN mkdir -p /home/bundle && \
    adduser -h /home/bundle -s /bin/bash -D bundle
WORKDIR /home/bundle

# Copy the bundle source to the image.
COPY docs/ /home/bundle/docs/
COPY bin/ /home/bundle/bin/
COPY lib/cogctl /usr/bin/cogctl

# Make sure user has rights.
RUN chown -R bundle:bundle /home/bundle

# Drop privileges.
USER bundle
WORKDIR /home/bundle

