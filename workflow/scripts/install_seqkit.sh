#!usr/bin/env bash

# Assuming you are in the directory where seqkit executable is located
# Download the latest release of SeqKit
curl -LJO https://github.com/shenwei356/seqkit/releases/download/v2.7.0/seqkit_darwin_arm64.tar.gz

# Extract the downloaded archive
tar -zxvf seqkit_darwin_arm64.tar.gz

# Create a directory named bin in your home directory if it doesn't exist
mkdir -p ~/bin

# Move the seqkit executable to ~/bin/
mv seqkit ~/bin/

# Add ~/bin to your PATH in your shell configuration file (e.g., ~/.bashrc, ~/.zshrc)
echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc  # or restart your terminal


# # Verify the installations and availability of other QC tools
# which seqkit

# which fastqc
# fastqc --version

# which multiqc
# multiqc --version

# which bbmap.sh
# bbmap.sh --version
