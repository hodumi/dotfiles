.config
==========

# TODO
* ## Caskを使うように設定を変える!
    + [windowsにCaskを導入する方法](http://aki2o.hatenablog.jp/entry/2014/03/18/Emacs%E4%B8%8A%E3%81%A7Cask%E3%82%92%E6%93%8D%E4%BD%9C%E3%81%A7%E3%81%8D%E3%82%8Bcaskxy.el%E3%82%92%E4%BD%9C%E3%82%8A%E3%81%BE%E3%81%97%E3%81%9F)
* org-captureを導入する。[参考ページ](http://d.hatena.ne.jp/rubikitch/20100819/org)
* Emacsで、MIGEMO入れる。
* 10-package.elに記載せずとも自動インストールされる方法を考える。
    + 3n-\*.el,4n-\*.elの*をインストールさせる？
    + Caskを導入すればできるようになる。
* direx使ってCSS/SCSSの構造をツリー状に表示する。

# 注意点
1. commitするときは、UTF-8で！
2. 初期実行時に、```init-loader```を手動インストールする!

# パッケージ紹介サイト
* [年末emacs設定大掃除をして、これは捨てられないと思った設定書いてく](http://shibayu36.hatenablog.com/entry/2012/12/29/001418)
* [Emacsパッケージ特集](http://qiita.com/hottestseason/items/1e8a46ad1ebcf7d0e11c)
* [パッケージ紹介 - Emacs JP -](http://emacs-jp.github.io/packages/)
* [来年も使いたいelispランキング2013](http://qiita.com/l3msh0@github/items/97909d6e2c92af3acc00)

# ```.emacs/inits/ ```以下のナンバリング方法

| No. | 内容                         |
|:---:|:----------------------------:|
| 0n  |  emacsの設定                 |
| 1n  |  ビルドインパッケージの設定  |
| 2n  |  ビルドインパッケージの設定  |
| 3n  |  パッケージの設定            |
| 4n  |  パッケージの設定            |
