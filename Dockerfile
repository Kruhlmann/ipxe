FROM artifacts.mobility.siemens.com/dk_smo_sw-docker-development-local/debian-bullseye
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    binutils \
    make \
    perl \
    liblzma-dev \
    mtools \
    mkisofs \
    syslinux \
    isolinux \
    git \
    && rm -rf /var/lib/apt/lists/*
