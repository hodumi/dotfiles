; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; 時間表示フォーマット yyyy/m/dd(w) hh:mm:ss ms
(setq display-time-string-forms
      '((format "%s/%s/%s (%s) %s:%s" year month day dayname 24-hours minutes)
        load
        (if mail " Mail" "")))

;; 時刻表示の左隣に日付を追加。
(setq display-time-kawakami-form t)

;; 24時間制
(setq display-time-24hr-format t)

;; 時間を表示
(display-time)
