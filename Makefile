# Copyright (c) Siemens Mobility A/S 2025, All Rights Reserved - CONFIDENTIAL
.ONESHELL:
.POSIX:
.DELETE_ON_ERROR:

src/bin-x86_64-efi/ipxe.efi:
	grep '#define DOWNLOAD_PROTO_NFS' src/config/general.h || echo "#define DOWNLOAD_PROTO_NFS" >>src/config/general.h
	make -C src -j 4 bin-x86_64-efi/ipxe.efi EMBED=clris.ipxe

ipxe.efi: src/bin-x86_64-efi/ipxe.efi
	cp src/bin-x86_64-efi/ipxe.efi $@
