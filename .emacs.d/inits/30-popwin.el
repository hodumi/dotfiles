; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)

(setq popwin:popup-window-position 'bottom)


; eshellをpopwinで出すように設定
(add-to-list  'popwin:special-display-config '("^\\*eshell.*\\*$" :regexp t :height 50 ))


