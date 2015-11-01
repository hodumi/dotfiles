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
    auto-save-buffers-enhanced
    save-visited-files
    
    helm
    helm-swoop
    helm-projectile
    helm-themes

    rainbow-mode
    rainbow-delimiters
    highlight-indentation
    hl-line+
    persp-mode
    diminish

    popwin
    direx
    visual-regexp
    flycheck
    comment-dwim-2
    
    bm
    point-undo
    undo-tree
    magit

    smooth-scroll
    tabbar
    powerline
    yascroll
    mwim
    ;; minimap
    open-junk-file

;   w3m
    org
    web-mode
    sass-mode
    scss-mode
    emmet-mode
    vbasense
    markdown-mode
    jade-mode
    
    slime
    mew
    google-this
    calfw
    nyan-mode
    vagrant
    ;; vagrant-tramp

    edbi
    edbi-sqlite
    ))

;; インストールしていなければ、インストールする
(dolist (package my/packages)
  (when (or (not (package-installed-p package)))
    (package-install package)))
