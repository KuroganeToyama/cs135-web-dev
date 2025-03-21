FROM ubuntu:latest

# Update system packages
RUN apt-get update

# Install packages for CS 135 course website
RUN apt-get install -y git hugo rsync python3 texlive make sed perl texlive-extra-utils imagemagick

# Cleanup
RUN rm -rf /var/lib/apt-get/lists/*

# Set default working directory
WORKDIR /app

# For container to run indefinitely
CMD ["tail", "-f", "/dev/null"]