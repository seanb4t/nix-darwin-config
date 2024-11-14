#!/usr/bin/env bash

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install nix
curl -sSf -L https://install.lix.systems/lix | sh -s -- install

# Apply config
. /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh

# Clone nix config
mkdir -p ~/Code/github.com/seanb4t
git clone https://github.com/seanb4t/nix-config.git ~/Code/github.com/seanb4t/nix-config

# Apply nix config
nix run nix-darwin -- switch  --flake ~/Code/github.com/seanb4t/nix-config
