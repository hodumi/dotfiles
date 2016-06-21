;;; elauncher --- Program launcher for Windows.


;;; Commentary:

;;; Code:

(defun elauncher:open-directory (&optional directory)
   (when (string-equal system-type "windows-nt")
     (let ((dir (or directory default-directory)))
       (message "Opend: %s" dir)
       (w32-shell-execute "explore" dir))))

(defun elauncher:run-application (file &optional parameters)
  (when (string-equal system-type "windows-nt")
    (message "Opend: %s %s" file parameters)
    (w32-shell-execute "open" file parameters)))   



(defmacro elauncher:defexplorer (name directory)
  `(defun ,name ()
     (interactive)
     (elauncher:open-directory ,directory)))

(defmacro elauncher:defapplication (name file &optional parameters)
  `(defun ,name ()
     (interactive)
     (elauncher:run-application ,file ,parameters)))


(defun elauncher:root-directory (&optional directory)
  (let ((dir (or directory default-directory)))
    (or
     (locate-dominating-file dir ".git")
     (locate-dominating-file dir ".vagrant")
     dir)))



;; Examples.
(elauncher:defexplorer elauncher:open-default-directory default-directory) ; default-directoryの表示
(elauncher:defexplorer elauncher:open-home-directory "~" ) ; HOMEの表示
(elauncher:defexplorer elauncher:open-root-directory (elauncher:root-directory)) ; プロジェクトのルートディレクトリの表示




(elauncher:defapplication run-calc "calc")


(bind-key "C-c e l d" 'elauncher:open-default-directory)
(bind-key "C-c e l h" 'elauncher:open-home-directory)
(bind-key "C-c e l r" 'elauncher:open-root-directory)


(provide '50-elauncher)
;;; 50-elauncher ends here
