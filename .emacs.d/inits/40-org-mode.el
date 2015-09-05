; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'org-install)
(require 'org-habit)

(setq org-startup-truncated nil)
(setq org-return-follows-link t)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; (org-remember-insinuate)
(setq org-directory "~/.config/share-agenda/")
(setq local-org-directory "~/.config/local-agenda/")
(setq org-default-notes-file (concat org-directory "memo.org"))
(setq org-capture-templates
      '(("t" "Todo" entry
         (file+headline nil "Inbox")
         "** TODO %?\n   %i\n   %a\n")
        ("b" "Bug" entry
         (file+headline nil "Inbox")
         "** TODO %?   :bug:\n   %i\n   %a\n")
        ("i" "Idea" entry
         (file+headline nil "New Ideas")
         "** %?\n   %i\n   %a\n   ")
	("m" "Memo" entry
         (file+headline nil "Memo")
         "** %?\n   %i\n   %a\n   ")))

 
(setq org-agenda-files (list local-org-directory org-directory)) ;agendaを使うため
;; ショートカットキー
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-co" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
 
(add-hook 'org-mode-hook 'turn-on-font-lock)
