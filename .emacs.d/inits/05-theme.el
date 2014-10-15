; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; アクティブ時 90%  非アクティブ時 85%
(setq default-frame-alist
      (append (list
               '(alpha . (90 85))
               ) default-frame-alist))


(load-theme 'tango-dark)

;; generic-x追加
(require 'generic-x)

;; 色の確認
; M-x list-faces-display

;; カーソルのある行を暗くする。
(defface hlline-face
  '((((class color)
      (background dark))
     (:background "#303030" :underline "#2e3436"))
    )
  "*Face used by hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode)

; #2e3436
