
(defun root-project-todo (&optional directory) 
  (interactive)
  (find-file (format "%s/todo.org" (elauncher:root-directory directory))))


