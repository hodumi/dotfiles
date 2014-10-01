; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-


(require 'direx)
(require 'direx-project)

(defun direx:jump-to-project-directory ()
  (interactive)
  (let ((result (ignore-errors
                  (direx-project:jump-to-project-root-other-window)
                  t)))
    (unless result
      (direx:jump-to-directory-other-window))))

(push '(direx:direx-mode :position left :width 25 :dedicated t) popwin:special-display-config)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-project-directory)

