;;; mcf-mode ---  Minecraft Forge MOD開発用minor mode

;;; Commentary:

;; 使用手順
; 参考URL: http://minecraftjp.info/modding/index.php/MinecraftForge%E5%B0%8E%E5%85%A5%E6%89%8B%E9%A0%86

;; 注:
; マルチプロジェクト非対応

;; keybind:
; C-c C-f c : クライアント実行
; C-c C-f s : サーバ実行

;; 開発環境:
; Windows 8.1 64bit
; Minecraft Forge 1.7.2

;;; Code:


(defun mcf:run-command (command buffer-or-name switch-p)
  "Run gradlew commnad"
  (let ((default-directory (locate-dominating-file default-directory ".gradle")))
    (start-process-shell-command "minecraft-forge-mode" buffer-or-name (concat "./gradlew " command))
    (when switch-p
      (switch-to-buffer buffer-or-name)
      (erase-buffer))
    ;; (set-buffer-process-coding-system 'sjis 'sjis)
    ))

(defun mcf:run-client ()
  "Run Minecraft client"
  (interactive)
  (mcf:run-command "runClient" "*mcf:client-log*" t))


(defun mcf:run-server ()
  "Run Minecraft server"
  (interactive)
  (mcf:run-command "runServer" "*mcf:server-log*" t))


;;; Minor Mode Setting:

(defvar mcf-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-c C-f c") 'mcf:run-client)
    (define-key map (kbd "C-c C-f s") 'mcf:server-client)
    map))

(define-minor-mode mcf-mode
  ""
  :lighter "MCF"
  )



(provide '50-mcforge)
;;; 50-mcforge.el ends here
