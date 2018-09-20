; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'popwin)
(setq special-display-function 'popwin:special-display-popup-window)

(setq popwin:popup-window-position 'bottom)


; eshellをpopwinで出すように設定
(add-to-list  'popwin:special-display-config '("^\\*eshell.*\\*$" :regexp t :height 50 ))
(add-to-list 'special-display-regexps "^\\*eshell.*\\*$")
