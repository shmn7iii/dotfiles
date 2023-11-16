# dotfiles

### macOS

```bash
$ xcode-select --install
$ git clone https://github.com/shmn7iii/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
$ make macos
```

```bash
# option: mouse speed for MagicMouse
$ defaults write "Apple Global Domain" com.apple.mouse.scaling 10
```

### Linux

- Only `.vimrc`, `.zshrc`, ◯◯env
- Requirements: git, make

```bash
$ git clone https://github.com/shmn7iii/dotfiles.git ~/.dotfiles && cd ~/.dotfiles
$ make install
```
