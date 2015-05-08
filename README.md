.config
==========


# TODO
* 特になし

# 注意点
1. commitするときは、UTF-8で！
2. 初期実行時に、`init-loader`を手動インストールする!
3. `edbi`使用には、Perlのパッケージが必要
   Windows用Perl：[Active Perl](http://www.activestate.com/activeperl)
   コマンド：```
   ppm install RPC-EPC-Service
   ppm install DBD-SQLite
   ```
   
# 登録済み独自パッケージ名
[Package BOF](http://www.java-conf.gr.jp/wg_bof/package/) : jp.gr.java_conf.hodumi

# グローバルな.gitignore登録方法
```
$ git config --global --add core.excludesfile "$HOME/.config/.git-global-ignore"
```

# `.emacs/inits/`以下のナンバリング方法

| No. | 内容                         |
|:---:|:----------------------------:|
| 0n  |  emacs自身の設定                 |
| 1n  |  ビルドインパッケージの設定  |
| 2n  |  ビルドインパッケージの設定  |
| 3n  |  パッケージの設定            |
| 4n  |  パッケージの設定            |
| 5n  |  自作パッケージ              |
