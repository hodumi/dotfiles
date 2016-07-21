; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; (global-set-key (kbd "M-%") 'vr/query-replace)


(require 'pcre2el)
(setq vr/engine 'pcre2el)
(require 'visual-regexp-steroids)

(bind-key "M-%" 'vr/query-replace)
;(bind-key "M-%" 'vr/replace)
