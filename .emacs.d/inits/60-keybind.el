; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; C-/のundoを無効化
(unbind-key "C-/")

;; C-tを無効化
(unbind-key (kbd "C-t"))

;; C-hをBackspaceに変更
(keyboard-translate ?\C-h ?\C-?)

;; 選択削除を可能にするため、
;; C-dを`delete-char`から`delete-forward-char`(<del>と同じ関数)に変更
(bind-key (kbd "C-d") 'delete-forward-char)

;; M-pを「一画面上に移動」に変更
(bind-key* "M-p" 'scroll-down-command)

;; M-nを「一画面下に移動」に変更
(bind-key* "M-n" 'scroll-up-command)

;; 元の「一画面上下移動」を無効化
(unbind-key (kbd "M-v"))
(unbind-key (kbd "C-v"))

;; C-S-kを「一行削除」に変更
(bind-key (kbd "C-S-k") 'kill-whole-line)

;; M-d, M-hを1単語ごとに前後削除に変更
(bind-key (kbd "M-d") 'delete-word)
(bind-key (kbd "M-h") 'backward-delete-word)

;; C-s -> helm-swoop
(bind-key (kbd "C-s") 'helm-swoop)

;; C-x kと間違えやすいキーバインドを削除
(unbind-key (kbd "C-x C-k <RET>")) 

;; shell-commandをeshell-commandに変更
(bind-key (kbd "M-!") 'eshell-command)

;; <f5>にrevert-bufferを設定
(bind-key (kbd "<f5>") 'revert-buffer)

;; M-<f5>とESC <f5>にrevert-all-buffersを設定
(bind-key (kbd "M-<f5>") 'revert-all-buffers)
(bind-key (kbd "ESC <f5>") 'revert-all-buffers)

;; F12にカレンダー表示を設定
(bind-key (kbd "<f12>") 'cfw:open-org-calendar)

;; C-!にeshell起動を設定
(bind-key (kbd "C-!") 'eshell)




;;; ======================================
;;; @ prefix keybinds
;;; ======================================

(defvar my-atkey-prefix (kbd "@"))

(setq my-atkey-map (make-keymap))
(define-key global-map my-atkey-prefix my-atkey-map)

(defun my-set-key-atkey-map ()
  (local-set-key my-atkey-prefix my-atkey-map))
(add-hook `hexl-mode-hook 'my-set-key-atkey-map)
(add-hook `view-mode-hook 'my-set-key-atkey-map)
(add-hook `ediff-keymap-setup-hook '(lambda ()
                                      (define-key ediff-mode-map my-atkey-prefix my-atkey-map)))

;; @ gを「行ジャンプ」に変更
(bind-key "g" 'goto-line my-atkey-map)

;; @ tで、TODOファイルを開く
(bind-key "t" 'root-project-todo my-atkey-map)  

(define-key my-atkey-map my-atkey-prefix '(lambda () (interactive) (insert "@")))

