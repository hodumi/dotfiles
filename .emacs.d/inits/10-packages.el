; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; パッケージ情報の更新
(package-refresh-contents)

;; インストールするパッケージ
(defvar my/packages
  '(
    ddskk
    ac-skk
    el-get
    bind-key
    use-package
    auto-install
    popup
    auto-complete
;    anything
    ac-emmet

    
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
    mwim
    minimap

;   w3m
    org
    web-mode
    sass-mode
    scss-mode
    emmet-mode

    vbasense
    
    markdown-mode

    slime
    mew
    google-this
    ))

;; インストールしていなければ、インストールする
(dolist (package my/packages)
  (when (or (not (package-installed-p package)))
    (package-install package)))
