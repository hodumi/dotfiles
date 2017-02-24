; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'magit)
;; (setq magit-last-seen-setup-instructions "1.4.0")

(setq magit-git-executable "C:/bin/Git/cmd/git.exe")

;; branch.description を 表示
(magit-add-section-hook 'magit-status-sections-hook
                        'magit-insert-branch-description
                        nil t)

;; (bind-key (kbd "M-g") 'magit-status)




