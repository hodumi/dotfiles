(defun google-maps-url--language-ja (&rest them)
  (concat (apply them) "&language=ja"))
(advice-add 'google-maps-static-build-url :around 'google-maps-url--language-ja)
(advice-add 'google-maps-geocode-build-url :around 'google-maps-url--language-ja)

