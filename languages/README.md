## Ruby

```bash
$ anyenv install rbenv
```

### Bundler

```bash
# バージョンを指定したい時は`-v xxx`
$ gem install bundler
```

### Rails
```bash
# バージョンを指定したい時は`-v xxx`
$ gem install rails
```

## Go

```bash
$ anyenv install goenv
```

いらん説もある

参考：[「Goでは○○envが不要になった理由」](https://tenntenn.dev/ja/posts/2021-06-27-xxenv/)

## Python

```bash
$ anyenv install pyenv
```

## Java
```bash
$ anyenv install jenv
```

jenvでは別途言語環境を用意しなきゃいけない

参考：  
[「jenvによる複数バージョン共存、切り替え可能なJava開発環境の構築」](https://startappdevfrom35.com/multiversionjavadevenv/)  
[「HomebrewでインストールできるJDKまとめ」](https://qiita.com/gishi_yama/items/ee3526e7e7a922148333#openjdk)

## Node.js

```bash
$ anyenv install nodenv
```

## Rust

```bash
# rustupを使う
$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# パスを通す
$ echo '# rust' >> ~/.zshrc
$ echo 'export PATH=$HOME/.cargo/bin:$PATH' >> ~/.zshrc
```
