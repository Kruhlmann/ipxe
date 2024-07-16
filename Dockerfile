# Copyright (c) Siemens Mobility A/S 2024, All Rights Reserved - CONFIDENTIAL
FROM artifacts.mobility.siemens.com/dk_smo_sw-docker-development-local/smo-denmark/devops/docker-images/debian:bookworm

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
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
