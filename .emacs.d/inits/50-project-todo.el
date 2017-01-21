
(defun root-project-todo (&optional directory) 
  (interactive)
  (find-file (format "%s/TODO" (elauncher:root-directory directory))))


