; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . gfm-mode))
;; (add-to-list 'auto-mode-alist '("\\.txt\\'" . gfm-mode))
