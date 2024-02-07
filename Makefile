install:
  @/bin/zsh script/setup.sh
  @/bin/zsh script/langenv.sh
  source ~/.zshrc

ubuntu-server: install
  @/bin/zsh script/setup-ubuntu-server.sh

macos: install
  @/bin/zsh script/brew.sh
  @/bin/zsh script/defaults.sh
