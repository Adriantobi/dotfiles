# Setting up Neovim with Dotfiles

This guide will help you set up Neovim (nvim) using dotfiles. Neovim is a highly customizable text editor built to enable efficient text editing. Dotfiles are configuration files used to personalize your system.

## Prerequisites

Before proceeding, ensure you have the following prerequisites installed:

- [Neovim](https://neovim.io/): A modern text editor that provides Vim emulation and extensibility. You can install Neovim using Chocolatey on Windows.
- [LLVM](https://llvm.org/): A compiler infrastructure project. Some Neovim plugins may require LLVM. LLVM can also be installed via Chocolatey on Windows.

## Installation Steps

### 1. Install Neovim and LLVM (optional)

#### Using Chocolatey (Windows)

If you're on Windows and have Chocolatey installed, you can use it to install Neovim and LLVM by running the following commands in an elevated PowerShell prompt:

```powershell
choco install neovim
choco install llvm
```
Manual Installation (All Platforms)
Alternatively, you can manually install Neovim and LLVM from their respective websites:

- [Neovim](https://neovim.io/)
- [LLVM](https://llvm.org/)

### 2. Clone Dotfiles
Clone your dotfiles repository into your home directory:

``` bash
git clone https://github.com/Adriantobi/dotfiles ~/.dotfiles
```

### 3. Set up Neovim Configurations
Copy the Neovim configuration file from your dotfiles repository to the appropriate location. This step assumes your Neovim configuration is stored at `~/.dotfiles/nvim/init.vim`.

``` bash
cp ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim
```
4. Launch Neovim
You're all set! Launch Neovim by typing nvim in your terminal and start enjoying your personalized text editing experience.

## Additional Notes
- If you encounter any issues during setup, feel free to consult the documentation of the specific plugins or configurations you're using.
- While LLVM is not initially required, if you notice errors related to it during Neovim usage, consider installing LLVM as it may be necessary for certain Neovim plugins or functionality.
- Remember to regularly update your Neovim configurations to stay up-to-date with the latest features and improvements.
