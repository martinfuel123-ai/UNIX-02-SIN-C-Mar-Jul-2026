FROM kalilinux/kali-rolling:latest

ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color

RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections

RUN apt-get update && apt-get install -y --no-install-recommends \
    neovim \
    vim \
    zsh \
    bash \
    bash-completion \
    perl \
    make \
    gawk \
    sed \
    grep \
    coreutils \
    findutils \
    procps \
    less \
    tree \
    jq \
    man-db \
    manpages \
    manpages-posix \
    curl \
    wget \
    git \
    git-lfs \
    ca-certificates \
    locales \
    shellcheck \
    nmap \
    masscan \
    tcpdump \
    tshark \
    netcat-traditional \
    socat \
    dnsutils \
    whois \
    traceroute \
    mtr-tiny \
    iproute2 \
    net-tools \
    iputils-ping \
    tor \
    torsocks \
    proxychains4 \
    obfs4proxy \
    httpie \
 && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
 && locale-gen \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

SHELL ["/bin/bash", "-c"]

WORKDIR /workspaces

RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

# 🔥 Prompt personalizado
RUN echo 'PS1="\[\e[36m\][Jose Martin Fuel]\[\e[0m\] \[\e[33m\]\W\[\e[0m\] \$ "' >> /root/.bashrc

CMD ["/bin/bash"]git status