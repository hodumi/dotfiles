

(defun mcf-run-task (name buffer-or-name command switch-p)
  (let ((default-directory (locate-dominating-file default-directory "gradlew")))
    (start-process-shell-command name buffer-or-name (concat "cmd /c \"chcp 65001 & gradlew " command " \""))
    (if switch-p (switch-to-buffer buffer-or-name))))

(defun mcf-run-client ()
  (interactive)
  (let ((buffer-name "minecraft-client"))
    (mcf-run-task "mcf:run-client" buffer-name "runClient" t)))
