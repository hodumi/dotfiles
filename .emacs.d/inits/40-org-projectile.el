(require 'org-projectile)

(setq org-projectile:projects-file
      "~/.config/local-agenda/projectile-todo.org")

(add-to-list 'org-capture-templates (org-projectile:project-todo-entry))
;; (setq org-agenda-files (append org-agenda-files (org-projectile:todo-files)))

(global-set-key (kbd "C-c p n") 'org-projectile:project-todo-completing-read)
