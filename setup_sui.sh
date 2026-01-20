#!/bin/bash

# Setup script for Sui Move environment on Linux (Ubuntu/Debian)

set -e

echo "Starting Sui Move environment setup..."

# 1. Update and install system dependencies
echo "Installing system dependencies..."
sudo apt-get update
sudo apt-get install -y curl git-all cmake gcc libssl-dev pkg-config libclang-dev libpq-dev build-essential

# 2. Install Rust
if ! command -v rustc &> /dev/null; then
    echo "Rust not found. Installing Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source "$HOME/.cargo/env"
else
    echo "Rust is already installed."
fi

# 3. Install Sui CLI
if ! command -v sui &> /dev/null; then
    echo "Sui CLI not found. Attempting to install binary..."
    
    # Create directory for binaries if it doesn't exist
    mkdir -p ~/.local/bin
    
    # Try to fetch the latest release URL for Linux x86_64
    LATEST_RELEASE_URL=$(curl -s https://api.github.com/repos/MystenLabs/sui/releases/latest | grep "browser_download_url.*sui-mainnet-.*-ubuntu-x86_64.tgz" | cut -d : -f 2,3 | tr -d '\"')
    
    if [ -z "$LATEST_RELEASE_URL" ]; then
        echo "Could not find mainnet binary. Trying testnet..."
        LATEST_RELEASE_URL=$(curl -s https://api.github.com/repos/MystenLabs/sui/releases/latest | grep "browser_download_url.*sui-.*-ubuntu-x86_64.tgz" | head -n 1 | cut -d : -f 2,3 | tr -d '\"')
    fi

    if [ -n "$LATEST_RELEASE_URL" ]; then
        echo "Downloading Sui CLI from $LATEST_RELEASE_URL..."
        wget -O sui.tgz "$LATEST_RELEASE_URL"
        tar -xvzf sui.tgz
        mv sui ~/.local/bin/
        rm sui.tgz
        chmod +x ~/.local/bin/sui
        echo "Sui CLI installed to ~/.local/bin/sui"
        
        # Add to PATH if not present
        if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
            echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
            echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
            export PATH="$HOME/.local/bin:$PATH"
        fi
    else
        echo "Could not find binary release. Compiling from source (this may take a while)..."
        cargo install --locked --git https://github.com/MystenLabs/sui.git --branch mainnet sui
    fi
else
    echo "Sui CLI is already installed."
fi

echo "Verifying installation..."
rustc --version
cargo --version
sui --version

echo "Setup complete! Please restart your terminal or source your shell config."
