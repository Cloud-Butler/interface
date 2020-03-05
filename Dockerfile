FROM alpine:3.4

# Setup bundle user and directory
RUN mkdir -p /home/bundle && \
    adduser -h /home/bundle -s /bin/bash -D bundle

# Copy the bundle source to the image
WORKDIR /home/bundle
COPY docs/ /home/bundle/docs/
COPY bin/ /home/bundle/bin/

# Make sure user has rights
RUN chown -R bundle:bundle /home/bundle

# Drop privileges
USER bundle
