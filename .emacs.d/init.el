; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; package

(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)


;; Installed check & Install init-loader
(let ((loader 'init-loader))
  (when (not (package-installed-p loader))
    (package-install loader)))

;; Add site-lisp 
(add-to-list 'load-path "~/.emacs.d/site-lisp")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-loader

(require 'init-loader)

(init-loader-load "~/.emacs.d/inits")

;; 起動時のログバッファを表示しない
(setq init-loader-show-log-after-init nil) 

;; エラーがあったときだけログバッファを表示
(if (not (equal (init-loader-error-log) "")) 
    (init-loader-show-log))

(put 'upcase-region 'disabled nil)
(put 'scroll-left 'disabled nil)
