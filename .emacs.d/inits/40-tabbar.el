;; ; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

;; (require 'tabbar)
;; (require 'cl-lib)
;; (tabbar-mode 1)


;; ;; Chrome ライクなタブ切り替えのキーバインド
;; (bind-key* "<C-tab>" 'tabbar-forward-tab)
;; (bind-key* "<C-S-tab>" 'tabbar-backward-tab)


;; ;; グループ化関数(作成途中)
;; (defun my-tabbar-buffer-group (buffer)
;;   (with-current-buffer (get-buffer buffer)
;;     ;; .*Controller.*\.ctp => Controller
;;     ;; .*\.php => PHP
;;     ;; .*\.scss => SASS
;;     ;; \*.*\* => Emacs
;;     (cond
;;      ((string-match "\*.*\*" (buffer-name)) '("Emacs"))
;;      (t '("Others")))
;;     ))
;; (setq tabbar-buffer-groups-function 'my-tabbar-buffer-group)

;; ;; グループ化しない
;; (setq tabbar-buffer-groups-function nil)

;; ;; タブに表示させるバッファの設定
;; (defvar my-tabbar-displayed-buffers
;;   '("*scratch*" "*Messages*" "*Backtrace*" "*Colors*" "*Faces*" "*vc-" "*slime-repl sbcl*" "magit.el")
;;   "*Regexps matches buffer names always included tabs.")

;; ;; タブに表示させないバッファの設定
;; (defvar my-tabbar-ignore-displayed-buffers
;;   '("task.org" "TAGS" "magit")
;;   "*Regexps matches buffer names always included tabs.")

;; (defun my-tabbar-buffer-list ()
;;   "Return the list of buffers to show in tabs.
;; Exclude buffers whose name starts with a space or an asterisk.
;; The current buffer and buffers matches `my-tabbar-displayed-buffers'
;; are always included."
;;   (let* ((hides (list ?\  ?\*))
;;          (re (regexp-opt my-tabbar-displayed-buffers))
;; 	 (ure (regexp-opt my-tabbar-ignore-displayed-buffers))
;;          (cur-buf (current-buffer))
;;          (tabs (delq nil
;;                      (mapcar (lambda (buf)
;;                                (let ((name (buffer-name buf)))
;;                                  (when (and (or (string-match re name)
;; 						(not (memq (aref name 0) hides)))
;; 					    (not (string-match ure name)))
;;                                    buf)))
;;                              (buffer-list)))))
;;     ;; Always include the current buffer.
;;     (if (memq cur-buf tabs)
;;         tabs
;;       (cons cur-buf tabs))))

;;  (setq tabbar-buffer-list-function 'my-tabbar-buffer-list)


;; ;; 左に表示されるボタンを無効化
;; (dolist (btn '(tabbar-buffer-home-button
;;                tabbar-scroll-left-button
;;                tabbar-scroll-right-button))
;;   (set btn (cons (cons "" nil)
;;                  (cons "" nil))))

;; ;; 外観変更
;; (set-face-attribute
;;  'tabbar-default nil
;;  :family (face-attribute 'default :family)
;;  :background (face-attribute 'mode-line-inactive :background)
;;  :height 0.9)
;; (set-face-attribute
;;  'tabbar-unselected nil
;;  :background (face-attribute 'mode-line-inactive :background)
;;  :foreground (face-attribute 'mode-line-inactive :foreground)
;;  :box nil)
;; (set-face-attribute
;;  'tabbar-selected nil
;;  :background (face-attribute 'mode-line :background)
;;  :foreground (face-attribute 'mode-line :foreground)
;;  :box nil)

;; ;; マウスホイール操作無効
;; (tabbar-mwheel-mode -1)

;; ;; タブ間の間隔
;; (setq tabbar-separator '(1.0))



;; ;; タブ上をマウス中クリックで kill-buffer
;; (defun my-tabbar-buffer-help-on-tab (tab)
;;   "Return the help string shown when mouse is onto TAB."
;;   (if tabbar--buffer-show-groups
;;       (let* ((tabset (tabbar-tab-tabset tab))
;;              (tab (tabbar-selected-tab tabset)))
;;         (format "mouse-1: switch to buffer %S in group [%s]"
;;                 (buffer-name (tabbar-tab-value tab)) tabset))
;;     (format "\
;; mouse-1: switch to buffer %S\n\
;; mouse-2: kill this buffer\n\
;; mouse-3: delete other windows"
;;             (buffer-name (tabbar-tab-value tab)))))

;; (defun my-tabbar-buffer-select-tab (event tab)
;;   "On mouse EVENT, select TAB."
;;   (let ((mouse-button (event-basic-type event))
;;         (buffer (tabbar-tab-value tab)))
;;     (cond
;;      ((eq mouse-button 'mouse-2)
;;       (with-current-buffer buffer
;;         (kill-buffer)))
;;      ((eq mouse-button 'mouse-3)
;;       (delete-other-windows))
;;      (t
;;       (switch-to-buffer buffer)))
;;     ;; Don't show groups.
;;     (tabbar-buffer-show-groups nil)))

;; (setq tabbar-help-on-tab-function 'my-tabbar-buffer-help-on-tab)
;; (setq tabbar-select-tab-function 'my-tabbar-buffer-select-tab)
