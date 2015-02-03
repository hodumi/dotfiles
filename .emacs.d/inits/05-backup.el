
;; バックアップを作成する
(setq make-backup-files t)

;; バックアップ先設定
(setq backup-directory-alist
  (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backup"))
    backup-directory-alist))
