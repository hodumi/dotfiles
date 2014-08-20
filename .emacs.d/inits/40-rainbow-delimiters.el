; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'rainbow-delimiters)
(global-rainbow-delimiters-mode t)
;; (custom-set-faces '(rainbow-delimiters-depth-1-face ((t (:foreground "#7f8c8d")))))

(set-face-attribute
 'rainbow-delimiters-mismatched-face nil
 :foreground "#e60033"
 :height 1.5)

(set-face-attribute
 'rainbow-delimiters-unmatched-face nil
 :foreground "#e60033"
 :height 1.5)
