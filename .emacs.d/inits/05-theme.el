; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; アクティブ時 90%  非アクティブ時 85%
(setq default-frame-alist
      (append (list
               '(alpha . (90 85))
               ) default-frame-alist))


(load-theme 'tango-dark)

;; generic-x追加
(require 'generic-x)
