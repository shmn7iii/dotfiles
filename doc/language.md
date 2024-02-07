### 基本 ○○env

以下例外と注釈

## Go

いらん説もある

参考：  
[「Go では ○○env が不要になった理由」](https://tenntenn.dev/ja/posts/2021-06-27-xxenv/)

## Java

jenv では別途言語環境を用意しなきゃいけない

参考：  
[Java のバージョン管理ツールである、jEnv の導入方法メモ](https://qiita.com/mitsuaki1229/items/03b3b8cde776ae678235)  
[jenv で複数バージョンの JDK を切り替える](https://takezoe.hatenablog.com/entry/2020/04/20/233219)  
[「Homebrew でインストールできる JDK まとめ」](https://qiita.com/gishi_yama/items/ee3526e7e7a922148333#openjdk)

## Rust

rustup

```bash
$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
$ echo 'export PATH=$HOME/.cargo/bin:$PATH' >> ~/.zshrc
```
