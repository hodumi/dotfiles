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
