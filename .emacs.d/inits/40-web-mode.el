; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[gj]sp?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ctp\\'" . web-mode))

(add-hook 'web-mode-hook #'(lambda ()
			     (rainbow-mode)
			     (rainbow-delimiters-mode)
			     (setq web-mode-enable-auto-indentation nil)
			     ))


(with-eval-after-load 'flycheck
  (flycheck-add-mode 'html-tidy 'web-mode)
  (flycheck-add-mode 'css-csslint 'web-mode)
  (flycheck-add-mode 'php 'web-mode)
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  ;; (flycheck-add-mode 'php-phpcs 'web-mode)
  ;; (flycheck-add-mode 'php-phpmd 'web-mode)
  )


;; (setq flycheck-phpcs-standard "PSR2")
