# Sui Move Bootcamp Environment

This repository contains the setup for the Sui Move Bootcamp environment.

## Prerequisites

- Linux (Ubuntu/Debian recommended) or macOS
- curl, git

## Setup

A setup script is provided to automate the installation of dependencies, Rust, and the Sui CLI.

1.  Make the script executable (if it isn't already):
    ```bash
    chmod +x setup_sui.sh
    ```

2.  Run the script:
    ```bash
    ./setup_sui.sh
    ```
    *Note: The script requires `sudo` privileges to install system dependencies.*

## Verification

After installation, verify the tools are correctly installed:

```bash
rustc --version
cargo --version
sui --version
```

## Resources

- [Sui Developer Certification - Links Importantes](https://sui-3.gitbook.io/sui-developer-certification/recursos/links-importantes#aulas-dezembro)
