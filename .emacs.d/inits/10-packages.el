; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; パッケージ情報の更新
(package-refresh-contents)

;; インストールするパッケージ
(defvar my/packages
  '(
    bind-key
    use-package
    auto-install
    popup
    auto-complete
;    anything

    
    helm
    rainbow-mode
    rainbow-delimiters
    highlight-indentation
    hl-line+
    
    popwin
    direx
    visual-regexp
    flycheck
    comment-dwim-2
    helm-projectile
    
    bm
    point-undo
    undo-tree
    magit

    ace-isearch
    smooth-scroll
    tabbar
    powerline
    yascroll

;   w3m
    org
    web-mode
    sass-mode
    scss-mode

    markdown-mode

    mew
    google-this
    ))

;; インストールしていなければ、インストールする
(dolist (package my/packages)
  (when (or (not (package-installed-p package)))
    (package-install package)))
