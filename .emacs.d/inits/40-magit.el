; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'magit)

; magit-git-executable は、41-magit-local.el に置く


;; branch.description を 表示
(magit-add-section-hook 'magit-status-sections-hook
                        'magit-insert-branch-description
                        nil t)

(add-hook 'git-commit-mode-hook
          '(lambda ()
             (set-buffer-file-coding-system 'utf-8)))
