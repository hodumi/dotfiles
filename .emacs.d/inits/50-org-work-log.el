;;; 50-org-work-log.el --- パッケージ概要

;; Copyright (C) 2015 by hodumi

;; Author: hodumi
;; URL: リポジトリの URL等
;; Version: 0.01
;; Package-Requires: ((依存パッケージ1) (依存パッケージ2))

;; ライセンス

;;; Code:

(require 'org)

(defvar org-work-log:work-log-root (file-truename "~/work-log"))
(defvar org-work-log:work-log-template (file-truename "~/.config/work-log-tmp.org"))

(defun org-work-log:generate-todays-work-log-pathname (dir)
  (concat dir "/" (format-time-string "%Y/%m/%Y-%m-%d.org")))

(defun org-work-log:create-work-log-file (file template-file)
  (let ((tmp (find-file-noselect template-file nil t)))
    (with-current-buffer tmp
      (append-to-file (point-min) (point-max) file)
      )
    (kill-buffer tmp)
    ))
    
    
(defun org-work-log:create-todays-work-log (dir template-filename)
  (let ((file (org-work-log:generate-todays-work-log-pathname dir)))
    (if (not (file-exists-p file))
	(org-work-log:create-work-log-file file template-filename))
    (find-file file)))

 (org-work-log:create-todays-work-log org-work-log:work-log-root org-work-log:work-log-template)



(provide 'org-work-log)

;;; 50-org-work-log.el ends here





