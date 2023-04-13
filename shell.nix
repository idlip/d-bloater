#!/usr/bin/env nix-shell

{ pkgs ? import <nixpkgs> {} }:


# These are more than enough package to run 'universal-android-debloater` in Nixos
# Just run `nix-shell` in this directory!
# Happy clean android!

(pkgs.buildFHSUserEnv {
  name = "universal Android debloater";
  targetPkgs = pkgs: (with pkgs; [
    python310
    python310Packages.pip
    python310Packages.virtualenv
    openssl
    zlib
    fuse
    glew
    glfw
    android-tools
    openal
    libopenmpt
    libglvnd
    stdenv.cc.cc.lib
    xorg.libXcursor
    xorg.libXrandr
    xorg.libXi
    xorg.libxcb
    xorg.libX11
    pythonManylinuxPackages.manylinux2014Package
    gnome.zenity
  ]);
  runScript = "zsh";
}).env
