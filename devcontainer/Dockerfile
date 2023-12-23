# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Set non-interactive mode, update, upgrade, install required packages, and clean up
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
        git \
        htop \
        locales \
        nano \
        ssh \
        sudo \
        tmux \
        tree \
        vim \
        wget \
        zsh \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Create a user 'florian', add to sudo group and grant sudo privileges
RUN useradd -ms /bin/bash florian && \
    usermod -aG sudo florian && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Switch to the 'florian' user
USER florian
