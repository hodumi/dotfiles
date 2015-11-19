; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'org-install)
(require 'org-clock)
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
         "** %?\n   %i\n   %a\n   ")
	("w" "Work-todo" entry
	 (file+datetree "~/.config/local-agenda/work.org" )
	 "* TODO %? %i")
	))

 
(setq org-agenda-files (list local-org-directory org-directory)) ;agendaを使うため
;; ショートカットキー
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-co" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
 
(add-hook 'org-mode-hook 'turn-on-font-lock)


(defun exit-to-clockcking-p ()
  (if (org-clocking-p)			;
      (if (not (yes-or-no-p "org-modeによる計測中です。Emacsを終了しますか？" ))
	  (error "計測を終了させてから終了させてください。"))
    t
    ))

(add-hook 'kill-emacs-hook 'exit-to-clockcking-p)
