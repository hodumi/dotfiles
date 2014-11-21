; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; C-tを無効化
(unbind-key (kbd "C-t"))

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

;; M-d, M-hを1単語ごとに前後削除に変更
(bind-key (kbd "M-d") 'delete-word)
(bind-key (kbd "M-h") 'backward-delete-word)

;; C-c C-gで「行ジャンプ」に変更
(bind-key (kbd "C-c C-g") 'goto-line)

;; C-s -> helm-swoop
(bind-key (kbd "C-s") 'helm-swoop)

;; C-x kと間違えやすいキーバインドを削除
(unbind-key (kbd "C-x C-k <RET>")) 
