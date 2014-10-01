; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'cl-lib)

(defun cygstart (args)
  "Execute \"cygstart\"."
  (interactive "Mcommand: ")
  (shell-command (concat "cygstart" " " args))
  (message (concat "cygstart: " args)))


(defun shortcut-list ()
  (interactive )
  (save-current-buffer
    (let ((buffer (generate-new-buffer "*shortcut*")))
      (set-buffer buffer)
      
      )))

(defun open-directory ()
  "Open the Current Directory by the Explorer"
  (interactive)
  (cygstart "."))
