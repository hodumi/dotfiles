;;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'flycheck)



(eval-after-load 'flycheck
  
  '(custom-set-variables
    '(flycheck-disabled-checkers '(javascript-jshint javascript-jscs))
    ))
