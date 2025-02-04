# Copyright (c) Siemens Mobility A/S 2025, All Rights Reserved - CONFIDENTIAL
{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = [
    pkgs.ansible
    pkgs.debootstrap
    pkgs.dpkg
    pkgs.rsync
    pkgs.sshpass
    pkgs.tigervnc
    pkgs.xlsx2csv
  ];
}

