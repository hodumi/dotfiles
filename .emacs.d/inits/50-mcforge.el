; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(defun mcf-run-task (name buffer-or-name command switch-p)
  (let ((default-directory (locate-dominating-file default-directory "gradlew")))
    (start-process-shell-command name buffer-or-name (concat "./gradlew " command ))
    (when switch-p 
      (switch-to-buffer buffer-or-name)
      (erase-buffer))
    (set-buffer-process-coding-system 'sjis 'sjis)
    ))

(defun mcf-run-client ()
  (interactive)
  (mcf-run-task "mcf:run-client" "*mcf-client*" "runClient" t))

