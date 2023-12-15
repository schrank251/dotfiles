FROM ubuntu:22.04

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
    && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash florian
RUN usermod -aG sudo florian
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER florian

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN git clone --depth 1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k

ENV SHELL=/bin/zsh
