
;; fnを実行
(defun dofn (fn &rest args)
  (lambda () (apply fn args) nil))


;; 連続実行
(defun times (time fn &rest args)
  (label
   (tms (tm)
	(lambda ()
	  (if (zerop tm)
	      nil
	    (progn
	      (apply fn args)
	      (tms (1- tm))))))
   (tms time)))

;; 待機
(defun wait (time)
  (label
   (w (tm)
      (lambda ()
	(if (zerop tm)
	    t
	  (w (1- tm)))))
   (w time)))

