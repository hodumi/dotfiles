  
;; Copied from "[[http://www.emacswiki.org/emacs/RevertBuffer][EmacsWiki:Revert all buffers that are visiting a file]]".
(defun revert-all-buffers ()
    "Refreshes all open buffers from their respective files."
    (interactive)
    (dolist (buf (buffer-list))
      (with-current-buffer buf
        (when (and (buffer-file-name) (file-exists-p (buffer-file-name)) (not (buffer-modified-p)))
          (revert-buffer t t t) )))
    (message "Refreshed open files.") )

(global-auto-revert-mode 1)
