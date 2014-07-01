; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-


(require 'direx)

(push '(direx:direx-mode :position left :width 25 :dedicated t)
      popwin:special-display-config)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)
