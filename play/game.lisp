
(lambda (args)
  (lambda ()
    (body)
    (next-state)))


(lambda ()
  (body)
  (lambda ()
    (body)
    (lambda ()
      (body)
      #'func)))


