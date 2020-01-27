
(defun show-file-name ()
  "Show the full path file name in the minibuffer."
  (interactive)
  (kill-new (buffer-file-name))
  (message (buffer-file-name)))

(defalias 'pwd 'show-file-name)

; ewwで、現在のファイルを開く
(defun eww-open-current-file ()
  "eww open current buffer-file"
  (interactive)
  (eww-open-file (buffer-file-name)))

