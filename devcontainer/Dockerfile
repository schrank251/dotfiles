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

# Install Oh My Zsh and Powerlevel10k theme
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" && \
    git clone --depth 1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

# Change the default shell to Zsh for the 'florian' user
RUN sudo chsh -s $(which zsh) florian
