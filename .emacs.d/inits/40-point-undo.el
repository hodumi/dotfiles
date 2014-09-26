; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'point-undo)

(bind-key (kbd "C-M-_") 'point-undo)
(bind-key (kbd "C-M-?") 'point-redo)
