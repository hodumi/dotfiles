; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; package


(require 'package) ;; You might already have this line

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line


;; Installed check & Install init-loader
(let ((loader 'init-loader))
  (when (not (package-installed-p loader))
    (package-install loader)))

;; Add site-lisp 
;(add-to-list 'load-path "~/.emacs.d/site-lisp")

;; 自動挿入プログラムを移動 
(setq custom-file (file-truename "~/.emacs.d/inits/99-custom-local.el"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-loader

(require 'init-loader)

;; 起動時のログバッファを表示しない
(setq init-loader-show-log-after-init nil) 

;; エラーがあったときだけログバッファを表示
(if (not (equal (init-loader-error-log) "")) 
    (init-loader-show-log))


(init-loader-load "~/.emacs.d/inits")

