; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'org-install)
(require 'org-clock)
(require 'org-habit)

(setq org-startup-truncated nil)
(setq org-return-follows-link t)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; (org-remember-insinuate)
(setq org-directory  "~/.config/local-agenda/")
;; (setq local-org-directory "~/.config/local-agenda/")
(setq org-default-notes-file (concat org-directory "memo.org"))

(setq org-use-speed-commands 1)		; スピードコマンドの有効化


;; スピードコマンド中のコマンド
(add-to-list 'org-speed-commands-user '("i" call-interactively 'org-cycle))

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
	("s" "Schedule" entry
	 (file+olp "~/.config/local-agenda/task.org" "OtherSchedules")
	 "** TODO %? %i\n    SCHEDULED: %^{Schedule}T DEADLINE: %^{Deadline}T")

	("M" "買物メモ" entry
	 (file+olp "~/dropbox/share/task.org" "買物メモ")
	 "** TODO %? %i")
	("S" "スマホ予定" entry
	 (file+olp "~/dropbox/share/task.org" "予定")
	 "** TODO %? %i\n    SCHEDULED: %^{Schedule}T DEADLINE: %^{Deadline}T")
	))

(setq org-src-fontify-natively t) ;ソースコードのハイライト 
(setq org-agenda-files (list ;; local-org-directory
			     org-directory)) ;agendaを使うため

; babelにgraphviz-dotを追加
(org-babel-do-load-languages
 'org-babel-load-languages
 '((dot . t))) 

(require 'ox-reveal)

;; ショートカットキー
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-co" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
 
(add-hook 'org-mode-hook 'turn-on-font-lock)

(unbind-key "M-h" org-mode-map)
(bind-key "C-c C-x C-j" 'org-clock-goto)

(add-to-list 'auto-mode-alist '("\\.txt\\'" . org-mode))
