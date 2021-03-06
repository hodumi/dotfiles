; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; Welcomeメッセージを非表示
(setq inhibit-startup-message t)

;; メニューバーを非表示
(menu-bar-mode 0)

;; ツールバーを非表示
(tool-bar-mode 0)

;; yes、noの入力をy、nに変更
(fset 'yes-or-no-p 'y-or-n-p)

;; バッファ自動再読み込み
(global-auto-revert-mode 1)

;; ファイル名補完時大文字小文字を区別しない
(setq completion-ignore-case t)

;; キー入力時、マウスカーソルを左上に移動(一時的)
(mouse-avoidance-mode 'exile)

;; 画面端 + 5行でスクロールする。
(setq scroll-margin 5)

;; スクロールされる行数を1行にする。
(setq scroll-conservatively 1)

;; スクリーンの最大化
(set-frame-parameter nil 'fullscreen 'maximized)
