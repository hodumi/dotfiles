; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;;; 16進数 -> 10進数のリスト
(defun rgb->r-g-b (rgb)
  
  )

;; 補色(illustrator流)
(defun complementary-color-for-illustrator (r g b)
  (let ((offset (+ (max r g b) (min r g b))))
    (list (- offset r) (- offset g) (- offset b))))

;; 補色
(defun complementary-color (r g b)
  (complementary-color-for-illustrator r g b))


;; 反転色
(defun inversion-color (r g b)
  (list (- 255 r)
	(- 255 g)
	(- 255 b)))

(defun message-rgb (r g b)
  
  )
