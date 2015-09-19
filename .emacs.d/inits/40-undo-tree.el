; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'undo-tree)
(global-undo-tree-mode t)
;; (global-set-key (kbd "M-/") 'undo-tree-redo)
(unbind-key "C-/" undo-tree-map)

