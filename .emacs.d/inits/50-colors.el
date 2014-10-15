; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; RGB表示
(defun message-rgb (r g b)
  (message (format "R:%s G:%s B:%s" r g b))
  (sit-for 3))



;; 補色(illustrator流)
(defun complementary-color (r g b)
  (let ((offset (+ (max r g b) (min r g b))))
    (list (- offset r) (- offset g) (- offset b))))


;; 反転色
(defun inversion-color (r g b)
  (list (- 255 r)
	(- 255 g)
	(- 255 b)))




