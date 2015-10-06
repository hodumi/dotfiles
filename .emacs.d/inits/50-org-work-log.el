;;; 50-org-work-log --- パッケージ概要

;; Copyright (C) 2015 by hodumi

;; Author: hodumi
;; URL: リポジトリの URL等
;; Version: 0.01

;; ライセンス
; MIT

;;; Code:

(require 'org)

(defvar org-work-log:work-log-root (file-truename "~/work-log"))
(defvar org-work-log:work-log-template (file-truename "~/.config/work-log-tmp.org"))

(defun org-work-log:generate-todays-work-log-directory (root)
  (concat root "/" (format-time-string "%Y/%m")))

(defun org-work-log:generate-todays-work-log-pathname (root)
  (concat (org-work-log:generate-todays-work-log-directory root) "/" (format-time-string "%Y-%m-%d.org")))

(defun org-work-log:make-directory (root)
  (labels
      ((mkdir (dir lst)
	      (if (not (file-directory-p dir))
		  (make-directory dir))
	      (if (not (null lst))
		  (mkdir (concat dir "/" (car lst)) (cdr lst)))))
    (let* ((work-log-dir (org-work-log:generate-todays-work-log-directory root))
	   (work-log-list (split-string work-log-dir "/")))
      (mkdir (car work-log-list) (cdr work-log-list))
      work-log-dir)))

(defun org-work-log:create-work-log-file (file template-file)  
  (let ((tmp (find-file-noselect template-file nil t)))
    (with-current-buffer tmp
      (append-to-file (point-min) (point-max) file)
      )
    (kill-buffer tmp)
    ))

(defun org-work-log:switch-work-log (root)
  (interactive "i")
  (let ((dir (or root org-work-log:work-log-root)))
    (find-file (org-work-log:generate-todays-work-log-pathname dir))))
    
    
(defun org-work-log:create-todays-work-log (root template-filename)
  (let ((file (org-work-log:generate-todays-work-log-pathname root)))
    (org-work-log:make-directory root)
    (if (not (file-exists-p file))
	(org-work-log:create-work-log-file file template-filename))
    (find-file file)))


(defun org-work-log:directory-dirs (dir)
    "Find all directories in DIR. Copied by http://emacswiki.org/emacs/ElispCookbook"
    (unless (file-directory-p dir)
      (error "Not a directory `%s'" dir))
    (let ((dir (directory-file-name dir))
          (dirs '())
          (files (directory-files dir nil nil t)))
        (dolist (file files)
          (unless (member file '("." ".."))
            (let ((file (concat (file-name-as-directory dir) file)))
              (when (file-directory-p file)
                (setq dirs (append (cons file
                                         (org-work-log:directory-dirs file))
                                   dirs))))))
        dirs))

(defun org-work-log:add-to-agenda (root)
  (dolist (dir (org-work-log:directory-dirs root) org-agenda-files)
    (add-to-list 'org-agenda-files dir)
  ))

 
;;; Config

(bind-key (kbd "C-c w l") 'org-work-log:switch-work-log)

(org-work-log:create-todays-work-log org-work-log:work-log-root org-work-log:work-log-template)
(org-work-log:add-to-agenda org-work-log:work-log-root)

(setq org-agenda-files nil)


(provide 'org-work-log)

;;; 50-org-work-log.el ends here





