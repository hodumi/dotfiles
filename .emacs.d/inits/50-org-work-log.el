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
  (let ((dir (org-work-log:generate-todays-work-log-directory root)))
    (if (not (file-directory-p dir))
	(make-directory dir))
    dir))



(file-directory-p "~/work-log/2015/10")

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



(bind-key (kbd "C-c w l") 'org-work-log:switch-work-log)

(org-work-log:create-todays-work-log org-work-log:work-log-root org-work-log:work-log-template)



(provide 'org-work-log)

;;; 50-org-work-log.el ends here





