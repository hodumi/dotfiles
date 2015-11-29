.config
==========

インストール方法
-----------------
1. `git clone https://github.com/hodumi/dotfiles.git`を実行
2. `.emacs.d`のリンクをホームディレクトリに作成
2. emacsを起動し、`M-x package-install init-loader`
3. emacsを再起動する。

 
edbi使用時の注意点
------------------
`edbi`使用には、Perlのパッケージが必要  
Windows用Perl：[Active Perl](http://www.activestate.com/activeperl)  
```
ppm install RPC-EPC-Service  
ppm install DBD-SQLite
```

`.emacs/inits/`以下のナンバリング
-------------------------------------

| No. | 内容                         |
|:---:|:----------------------------:|
| 0n  |  emacs自身の設定                 |
| 1n  |  ビルドインパッケージの設定1(前提)  |
| 2n  |  ビルドインパッケージの設定2  |
| 3n  |  パッケージの設定1(前提)            |
| 4n  |  パッケージの設定2            |
| 5n  |  自作パッケージ              |
