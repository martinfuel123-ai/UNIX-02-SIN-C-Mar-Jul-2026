# FROM chooses the base image, we start from kali linux rolling
# kali is a debian distro for security testing, BHB Ch.3
# each instruction adds a layer, docker caches unchanged layers
# that is why order matters: early lines are reused across builds
FROM kalilinux/kali-rolling:latest


# ENV creates environment variables that programs can read
# DEBIAN_FRONTEND stops apt from asking during build
# LANG and LC_ALL set spanish locale with utf-8 encoding
# TERM tells programs the terminal supports 256 colors
# backslash at the end continues on next line, BHB Ch.1 on env vars
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color


# this pre answers wiresharks question so the build does not hang
# wireshark asks if non root users can capture, we say false
# the pipe sends the echo output to debconf, BHB Ch.1 on pipes
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections


# RUN executes commands during the image build
# apt-get update downloads the package index from repos
# apt-get install downloads and installs the listed packages
# -y says yes to prompts, --no-install-recommends skips extras
# one big RUN makes fewer layers so the image is smaller, BHB Ch.3
# && chains commands, next runs only if previous succeeded, BHB Ch.2
# trailing backslash continues on next line for readability
RUN apt-get update && apt-get install -y --no-install-recommends \
    \
    # text editors: neovim, vim, zsh shell, bash completion
    neovim \
    vim \
    zsh \
    bash-completion \
    \
    # text processing: perl, make, gawk, sed, grep
    # gawk (awk), sed and grep are covered in BHB Ch.2
    perl \
    make \
    gawk \
    sed \
    grep \
    \
    # basic unix: coreutils (cat ls head), findutils (find xargs), procps (ps top), less, tree, jq for json
    coreutils \
    findutils \
    procps \
    less \
    tree \
    jq \
    \
    # man pages because kali removes them to save space
    man-db \
    manpages \
    manpages-posix \
    \
    # downloads and networking: curl, wget, git, lfs, ca-certs, locales
    curl \
    wget \
    git \
    git-lfs \
    ca-certificates \
    locales \
    \
    # shellcheck checks bash scripts for errors
    shellcheck \
    \
    # nmap scans ports, masscan scans fast over big ranges
    nmap \
    masscan \
    \
    # tcpdump captures packets, tshark is the terminal wireshark
    tcpdump \
    tshark \
    \
    # net tools: netcat, socat, dns, whois, traceroute, mtr, iproute2, netstat, ping
    netcat-traditional \
    socat \
    dnsutils \
    whois \
    traceroute \
    mtr-tiny \
    iproute2 \
    net-tools \
    iputils-ping \
    \
    # tor, torsocks, proxychains4, obfs4proxy for anonymous traffic
    tor \
    torsocks \
    proxychains4 \
    obfs4proxy \
    \
    # httpie is like curl but easier to read
    httpie \
    \
 # sed uncomments the spanish locale line then locale-gen builds it
 # sed -i edits the file in place, BHB Ch.2 on sed
 && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
 && locale-gen \
 \
 # clean removes downloaded deb files and package lists
 # cleaning in the same RUN is important so the layer does not keep them
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*


# SHELL changes which shell future RUN instructions use
# docker uses sh by default, we switch to bash, BHB Ch.1 on sh vs bash
SHELL ["/bin/bash", "-c"]


# ----------------------------------------------------------------------------
# WORKDIR: directorio de trabajo al entrar al contenedor
# ----------------------------------------------------------------------------
# Codespaces siempre monta el código del repositorio en
# /workspaces/<nombre-del-repo>. Establecer /workspaces aquí hace que las
# terminales se abran cerca de nuestros archivos del curso.
WORKDIR /workspaces

# Configuración de Git para el contenedor:
# - safe.directory *: confía en cualquier repo montado (necesario porque
#   /workspaces/... tiene un UID distinto al de root dentro del container).
# - init.defaultBranch main: evita warnings de "master vs main" en git init.
# - pull.rebase false: merge por defecto al hacer pull (más intuitivo)
# - git lfs install --system: registra los hooks de LFS globalmente para
#   que, si un repo los necesita, funcionen sin sorpresas.
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

# ----------------------------------------------------------------------------
# CMD: comando que se ejecuta por defecto al arrancar el contenedor
# ----------------------------------------------------------------------------
# Lanza una shell bash interactiva. Codespaces la sobrescribe con su
# propia terminal integrada de VS Code, pero es buena práctica dejarla
# definida para que la imagen sea usable también con Docker puro.
# Prompt del curso para bash
RUN chsh -s /usr/bin/zsh root
RUN cat >> /root/.zshrc <<'EOF'
PROMPT='%F{cyan}[Martin-Fuel]%f %F{yellow}%1~%f %(?.%F{green}✔️.%F{red}✘)%f %# '
EOF
CMD ["/usr/bin/zsh"]