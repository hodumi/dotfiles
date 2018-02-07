;;; 41-yatemplate.el --- yatemplate config           -*- lexical-binding: t; -*-

;;; Commentary:
;;; yatemplate config file

;; Copyright (C) 2018

;; Author:  kudo
;; Keywords: tools

; Windowsだと、ファイル名に:が使えないので、_に変更
(setq yatemplate-separator "_")

; デフォルト値だと認識しなかったので、\\を/に変更
(setq yatemplate-dir "~/.emacs.d/templates")


(yatemplate-fill-alist)
(auto-insert-mode 1)
