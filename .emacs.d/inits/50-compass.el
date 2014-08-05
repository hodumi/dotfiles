; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(defun compass-command (command &optional directory)
  (let ((default-directory (if directory
			       directory
			     (locate-dominating-file default-directory "config.rb"))))
    (start-process-shell-command "compass" "*compass*" (concat "compass " command))
    (switch-to-buffer "*compass*")
;    (set-buffer-process-coding-system 'sjis 'sjis) 
    ))

(defun compass-create (directory)
  (interactive "DDirectory")
  (compass-command "create" directory))

(defun compass-watch ()
  (interactive)
  (compass-command "watch")
  )
