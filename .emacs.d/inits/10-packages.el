; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; パッケージ情報の更新
(package-refresh-contents)

;; インストールするパッケージ
(defvar my/packages
  '(popup
    auto-complete
    anything
    rainbow-mode
    popwin
    direx

    magit

    tabbar
    powerline
    yascroll

    web-mode
    sass-mode
    scss-mode

    markdown-mode
    ))

;; インストールしていなければ、インストールする
(dolist (package my/packages)
  (when (or (not (package-installed-p package)))
    (package-install package)))
