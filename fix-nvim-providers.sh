#!/bin/bash
# Fix Neovim missing providers

echo "Installing Node.js neovim package..."
npm install -g neovim

echo "Installing Python3 pynvim package..."
pip3 install --user pynvim

echo "Installing Ruby neovim package..."
gem install neovim

echo "All Neovim providers should now be installed."

