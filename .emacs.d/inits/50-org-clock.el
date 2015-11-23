
(require 'org-clock)

;;; 計測中チェック
(defun exit-to-clockcking-p ()
  (if (org-clocking-p)			;
      (if (not (yes-or-no-p "org-modeによる計測中です。Emacsを終了しますか？" ))
	  (error "計測を終了させてから終了させてください。"))
    t
    ))

(add-hook 'kill-emacs-hook 'exit-to-clockcking-p)



(defvar default-modeline-foreground (face-foreground 'mode-line))
(defvar default-modeline-background (face-background 'mode-line))


 
(defun set-unclocking-color ()
  (set-face-attribute 'mode-line nil
		      :foreground "#fff"
		      :background "#8b0000"
		      :inherit 'mode-line)
   (powerline-reset))

(defun set-clocking-color ()
  (set-face-attribute 'mode-line nil
			  :foreground default-modeline-foreground
			  :background default-modeline-background
			  :inherit 'mode-line)
  (powerline-reset))


(add-hook 'org-clock-in-hook 'set-clocking-color)
(add-hook 'org-clock-out-hook 'set-unclocking-color)

(set-unclocking-color)
