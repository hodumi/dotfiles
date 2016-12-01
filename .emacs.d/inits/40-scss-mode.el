; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-


;
; 事前に以下のパッケージをインストールする
; $ gem install compass
; $ gem install scss_lint
; $ gem install scss_lint_reporter_checkstyle


;;; Code:

(require 'css-mode)
(require 'scss-mode)
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))

;; インデント幅を2にする
;; コンパイルは compass watchで行うので自動コンパイルをオフ
(defun scss-custom ()
  "scss-mode-hook"
  (and
   (set (make-local-variable 'css-indent-offset) 2)
   (set (make-local-variable 'scss-compile-at-save) nil)))

(add-hook 'scss-mode-hook
  '(lambda()
     (rainbow-mode)
     (auto-complete-mode)
     (scss-custom)))
