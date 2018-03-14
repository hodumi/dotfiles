; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(add-to-list 'load-path (locate-user-emacs-file "el-get/packages/el-get/"))
(setq el-get-dir "~/.emacs.d/el-get/packages")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get 'sync)


;; Packages to install from el-get
(defvar my/el-get-packages
  '(
    point-undo
    redo+
    )
  "A list of packages to install from el-get at launch.")

(el-get 'sync my/el-get-packages)
