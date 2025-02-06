# Copyright (c) Siemens Mobility A/S 2025, All Rights Reserved - CONFIDENTIAL
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.gcc
    pkgs.gnumake
    pkgs.binutils
    pkgs.nasm
    pkgs.gnu-efi
  ];
}
