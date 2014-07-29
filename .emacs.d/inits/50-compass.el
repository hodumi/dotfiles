; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(defun compass-command (name buffer-or-name command switch-p)
  (let ((default-directory (locate-dominating-file default-directory "config.rb")))
    (start-process-shell-command name buffer-or-name (concat "compass " command))
    (if switch-p (switch-to-buffer buffer-or-name))
    (set-buffer-process-coding-system 'sjis 'sjis)
    ))

(defun compass-watch ()
  (interactive)
  (compass-command "compass" "compass" "watch" t))
