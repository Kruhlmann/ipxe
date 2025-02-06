# Copyright (c) Siemens Mobility A/S 2025, All Rights Reserved - CONFIDENTIAL
FROM artifacts.mobility.siemens.com/dk_smo_sw-docker-development-local/smo-denmark/devops/docker-images/debian:bookworm

RUN export DEBIAN_FRONTEND=noninteractive \
    && dpkg --add-architecture i386 \
    && apt-get update  \
    && apt-get install --no-install-recommends -y mtools syslinux isolinux libc6-dev-i386 libgcc-s1:i386 libc6-dbg:i386 git make
