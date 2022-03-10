## node.js

```bash
# nodebrewをインストール
$ brew install nodebrew
# 初期設定
$ nodebrew setup
# パス
$ echo '# nodebrew' >> ~/.zshrc
$ echo 'export PATH=$HOME/.nodebrew/current/bin:$PATH' >> ~/.zshrc
# 安定版
$ nodebrew install-binary stable
# 利用可能一覧
$ nodebrew ls
# 任意のバージョンを指定
$ nodebrew use xxx
```

## yarn

> node.jsを先にやってね
> 

```bash
$ npm install -g yarn
```

## Ruby

```bash
# rbenv,ruby-buildをインストール
brew install rbenv ruby-build
# 初期設定
rbenv init
# パスを通す
echo '# rbenv' >> ~/.zshrc
echo 'eval "$(rbenv init - zsh)"' >> ~/.zshrc
# rbenv doctor
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash
# 利用可能一覧 `-list`で安定版のみ
$ rbenv install --list-all
# 任意バージョンをインストール
rbenv install xxx
# globalに設定
rbenv global xxx

# bundler
# バージョンを指定したい時は`-v xxx`
$ gem install bundler

# rails *rarnが必要
# バージョンを指定したい時は`-v xxx`
$ gem install rails
```

## Go

```bash
# goenvをインストール
$ brew install goenv
# パスを通す
$ echo '# goenv' >> ~/.zshrc
$ echo 'export GOENV_ROOT=$HOME/.goenv' >> ~/.zshrc
$ echo 'export PATH=$GOENV_ROOT/bin:$PATH' >> ~/.zshrc
$ echo 'eval "$(goenv init -)"' >> ~/.zshrc
# 利用可能一覧
$ goenv install -l
# goをインストール
$ goenv install xxx
# globalを設定
$ goenv global xxx
```

> GUIでも行ける
> 
> 
> [Download and install](https://go.dev/doc/install)
> 

```bash
# GOPATHの変更
$ echo '# GOPATH' >> ~/.zshrc
$ echo 'export GOPATH=$HOME/.go' >> ~/.zshrc
# 確認
$ go env GOPATH
```

## Python

```bash
# pyenvのインストール
$ brew install pyenv
# パスを通す
$ echo '# pyenv' >> ~/.zshrc
$ echo 'eval "$(pyenv init -)"' >> ~/.zshrc
# pythonのdependencies
$ brew install openssl readline sqlite3 xz zlib
# pythonのインストール
$ pyenv install xxx
```

## Java

> どうせ面倒なので適宜
> 
> 
> [macOSでjavaを使いたい。](https://zenn.dev/satokazur222/articles/66568417b291d8)
> 

## Rust

```bash
# rustupを使う
$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# パスを通す
$ echo '# rust' >> ~/.zshrc
$ echo 'export PATH=$HOME/.cargo/bin:$PATH' >> ~/.zshrc
```

## Elixir

```bash
# brewで行ける
$ brew install elixir
# 出力内容めっちゃPythonだけどこれでいいらしい
```

## マウス速度を設定する場合

```bash
defaults write "Apple Global Domain" com.apple.mouse.scaling 15
```