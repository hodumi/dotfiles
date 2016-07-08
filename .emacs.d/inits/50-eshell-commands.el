

(defun start (args)
  (shell-command (format "cmd /C \"start %s\"" args)))
