; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(defun node-webkit-command (command &optional directory)
  (let ((default-directory (if directory
			       directory
			     (locate-dominating-file default-directory "package.json"))))
    (start-process-shell-command "node-webkit" "*node-webkit*" (concat "nw " command ))
    (switch-to-buffer "*node-webkit*")
;    (set-buffer-process-coding-system 'sjis 'sjis) 
    ))

(defun node-webkit-run ()
  (interactive)
  (node-webkit-command "."))

