;; ; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; ;; デフォルト言語
(set-language-environment "Japanese")

;; ;; デフォルトの文字コード
(set-default-coding-systems 'utf-8-dos)
(prefer-coding-system 'utf-8-dos)
;; (setq locale-coding-system 'utf-8) ; これがあるとorg-scheduleで曜日が文字化けするのでコメントアウト

;; ;; ファイルパスの文字コード
(setq default-file-name-coding-system 'japanese-cp932-dos)


