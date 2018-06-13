; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; パッケージ情報の更新
(package-refresh-contents)

;; インストールするパッケージ
(defvar my/packages
  '(
    ddskk
    ac-skk
    ;el-get
    bind-key
    use-package
    popup
    auto-complete
;    anything
    ac-emmet
    auto-save-buffers-enhanced
    save-visited-files
    japanese-holidays
    win-switch

    pcre2el
    
    helm
    helm-swoop
    helm-projectile
    helm-themes

    ;; eshell-prompt-extras
    rainbow-mode
    rainbow-delimiters
    highlight-indentation
    ;; persp-mode
    diminish

    popwin
    ;; direx
    visual-regexp
    visual-regexp-steroids
    flycheck
    flycheck-pos-tip
    flycheck-status-emoji
    comment-dwim-2
    
    bm
    ;; undo-tree
    magit

    ;; perspeen
    ;; helm-perspeen

    smooth-scroll
    tabbar
    mode-icons
    powerline
    yascroll
    yasnippet
    yasnippet-snippets
    yatemplate
    mwim
    ;; minimap
    open-junk-file

    editorconfig
    editorconfig-charset-extras

;   w3m
    org
    org-beautify-theme
    ;; org-projectile
    ox-reveal

    web-mode
    sass-mode
    scss-mode
    emmet-mode
    vbasense
    markdown-mode
    jade-mode
    graphviz-dot-mode
    plantuml-mode
    
    slime
    mew
    google-this
    google-maps
    google-translate
    calfw
    calfw-org
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
