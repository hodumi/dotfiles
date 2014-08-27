; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; C-hをBackspaceに変更
(keyboard-translate ?\C-h ?\C-?)

;; 選択削除を可能にするため、
;; C-dを`delete-char`から`delete-forward-char`(<del>と同じ関数)に変更
(define-key global-map (kbd "C-d") 'delete-forward-char)

;; M-pを「一画面上に移動」に変更
(define-key global-map (kbd "M-p") 'scroll-down-command)

;; M-nを「一画面下に移動」に変更
(define-key global-map (kbd "M-n") 'scroll-up-command)

;; 元の「一画面上下移動」を無効化
(define-key global-map (kbd "M-v") nil)
(define-key global-map (kbd "C-v") nil)

;; C-S-kを「一行削除」に変更
(define-key global-map (kbd "C-S-k") 'kill-whole-line)

