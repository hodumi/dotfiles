; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(defun compass-command (name buffer-or-name command)
  (let ((default-directory (locate-dominating-file default-directory "config.rb")))
    (start-process-shell-command name buffer-or-name (concat "compass " command))
    (set-buffer-process-coding-system 'sjis 'sjis)
    ))

(defun compass-watch ()
  (interactive)
  (compass-command "compass" "*compass-w*" "watch")
  )
