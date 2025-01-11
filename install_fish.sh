#!/bin/bash

# Detect the operating system
OS=$(uname -s)

# Perform actions based on the detected OS
case "$OS" in
    Linux)
        echo "Detected Linux OS"
        
        sudo apt-add-repository ppa:fish-shell/release-3
        sudo apt update
        sudo apt install fish

        ;;
    Darwin)
        echo "Detected macOS"
        
        if ! command -v brew &>/dev/null; then
            echo "Homebrew not found. Installing Homebrew..."
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        else
            echo "Homebrew is already installed."
        fi

        brew install fish
        ;;
    *)
        echo "Unsupported operating system: $OS"
        exit 1
        ;;
esac

