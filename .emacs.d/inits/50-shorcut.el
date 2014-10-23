; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'cl-lib)

(defun explorer (&optional path)
  "引数があればそのパスの、引数が省略されていれば現在のバッファのファイルを、explorerで開きます。"
  (interactive)
  (setq path (expand-file-name (or path (buffer-file-name))))
  (cond
    ((not (file-exists-p path))
     (message "path %s isn't exist" path))
    (t
     (let ((dos-path (replace-regexp-in-string "/" "\\\\" path)))
       (w32-shell-execute "open" "explorer.exe" (concat "/select," dos-path))))))


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
