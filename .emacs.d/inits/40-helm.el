; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'helm-config)
; (helm-descbinds-mode)

(helm-mode 1)

;; キーバインド
(define-key global-map (kbd "M-x")     'helm-M-x)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "C-x C-r") 'helm-recentf)
(define-key global-map (kbd "M-y")     'helm-show-kill-ring)
(define-key global-map (kbd "C-x b")   'helm-buffers-list)


;; set-face-background
;; set-face-foreground

;; helm-ff-file(ファイルの文字色)を変える。
(set-face-attribute
 'helm-ff-file nil
 :family (face-attribute 'default :family)
 :foreground (face-attribute 'default :foreground)
 )

;;; タブ補完
;; For find-file etc.
;(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
;; For helm-find-files etc.
;(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)

;; (custom-set-variables '(helm-ff-auto-update-initial-value nil))
;; ;; TABで任意補完。選択肢が出てきたらC-nやC-pで上下移動してから決定することも可能
;; (define-key helm-c-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
