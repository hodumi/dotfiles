; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; (setq shell-file-name "bash")
;; (setenv "SHELL" shell-file-name)
;; (setq explicit-shell-file-name shell-file-name)
;; (setq system-uses-terminfo nil)

;; emacsclient用サーバ起動
(require 'server)
(unless (server-running-p)
  (server-start))

;; eshell用コマンド

(defun cd.. ()
  (cd ".."))

