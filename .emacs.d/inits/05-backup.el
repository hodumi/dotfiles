
;; バックアップを作成する
(setq make-backup-files t)

;; バックアップ先設定
(setq backup-directory-alist
  (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backup"))
    backup-directory-alist))

;; 自動保存ファイル
(setq auto-save-file-name-transforms
  `((".*", (expand-file-name "~/.emacs.d/auto-save-file/") t)))
