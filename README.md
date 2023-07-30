# Setup my DevEnv

## Before start

I often use following tools

- [Min](https://minbrowser.org/): A fast, minimal browser that protects your
  privacy
- [Microsoft PowerToys](https://apps.microsoft.com/store/detail/microsoft-powertoys/XP89DCGQ3K6VLD):
  Set of utilities
- [VSCode](https://code.visualstudio.com/): Code editor

### Windows

- Settings -> Privacy & Security -> For developers
  - Turn on Developer mode
  - Terminal -> Windows Terminal
  - PowerShell -> Tern on PowerShell script execution

## WSL

### Install WSL2

Do following command in PowerShell, and restart PC.

```PowerShell
# Install WSL2
wsl --install
```

After restart, Terminal will open automatically. Then, input username and
password.

### Backup WSL

```PowerShell
# Make directory
mkdir wsl_snapshot

# Export
wsl --export Ubuntu-20.04 wsl_snapshot/ubuntu-20.04.tar
```

###
