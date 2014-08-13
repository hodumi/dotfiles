; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; C-hをBackspaceに変更
(keyboard-translate ?\C-h ?\C-?)

; M-pを「一画面上に移動」に変更
(define-key global-map "\M-p" 'scroll-down-command)

; M-nを「一画面下に移動」に変更
(define-key global-map "\M-n" 'scroll-up-command)

; C-S-kを「一行削除」に変更
(define-key global-map "\C-K" 'kill-whole-line)
