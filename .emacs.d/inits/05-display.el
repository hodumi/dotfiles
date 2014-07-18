; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; Welcomeメッセージを非表示
(setq inhibit-startup-message t)

;; メニューバーを非表示
(menu-bar-mode 0)

;; ツールバーを非表示
(tool-bar-mode 0)

;; 行番号表示
(global-linum-mode t)

;; 行番号フォーマット
(setq linum-format "%3d")

;; yes、noの入力をy、nに変更
(fset 'yes-or-no-p 'y-or-n-p)

;; バッファ自動再読み込み
(global-auto-revert-mode 1)
