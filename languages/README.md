### 基本 ○○env

以下例外と注釈

## Go

いらん説もある

参考：  
[「Goでは○○envが不要になった理由」](https://tenntenn.dev/ja/posts/2021-06-27-xxenv/)

## Java

jenv では別途言語環境を用意しなきゃいけない

参考：  
[「jenvによる複数バージョン共存、切り替え可能なJava開発環境の構築」](https://startappdevfrom35.com/multiversionjavadevenv/)  
[「HomebrewでインストールできるJDKまとめ」](https://qiita.com/gishi_yama/items/ee3526e7e7a922148333#openjdk)

## Rust

rustup

```bash
$ curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
$ echo 'export PATH=$HOME/.cargo/bin:$PATH' >> ~/.zshrc
```
