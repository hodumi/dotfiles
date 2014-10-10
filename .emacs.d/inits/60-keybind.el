; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-


;; C-hをBackspaceに変更
(keyboard-translate ?\C-h ?\C-?)

;; 選択削除を可能にするため、
;; C-dを`delete-char`から`delete-forward-char`(<del>と同じ関数)に変更
(bind-key (kbd "C-d") 'delete-forward-char)

;; M-pを「一画面上に移動」に変更
(bind-key (kbd "M-p") 'scroll-down-command)

;; M-nを「一画面下に移動」に変更
(bind-key (kbd "M-n") 'scroll-up-command)

;; 元の「一画面上下移動」を無効化
(unbind-key (kbd "M-v"))
(unbind-key (kbd "C-v"))

;; C-S-kを「一行削除」に変更
(bind-key (kbd "C-S-k") 'kill-whole-line)

;; M-hを「後ろを一文削除」に変更
(bind-key (kbd "M-h") 'backward-kill-word)

;; C-x C-gで「行ジャンプ」に変更
(bind-key (kbd "C-x C-g") 'goto-line)

;; C-:, C-\, C-/, C-]でカーソル上下左右移動
(bind-key (kbd "C-/") 'backward-char)
(bind-key (kbd "C-]") 'forward-char)
(bind-key (kbd "C-:") 'previous-line)
(bind-key (kbd "C-\\") 'next-line)

;; M-/, M-]で1文字分左右移動
(bind-key (kbd "M-/") 'backward-word)
(bind-key (kbd "M-]") 'forward-word)

;; M-:, M-\で1画面分上下移動
(bind-key (kbd "M-:") 'scroll-down-command)
(bind-key (kbd "M-\\") 'scroll-up-command)

;; <C-return>で改行+インデント
(bind-key (kbd "<C-return>") 'newline-and-indent)
