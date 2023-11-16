install:
  @/bin/zsh script/setup.sh
  @/bin/zsh script/langenv.sh
  source ~/.zshrc

macos: install
  @/bin/zsh script/brew.sh
  @/bin/zsh script/defaults.sh
