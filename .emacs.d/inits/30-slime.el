; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(setf inferior-lisp-program "sbcl") ; your Lisp system
(require 'slime-autoloads)
(slime-setup '(slime-repl))

