(add-to-list 'load-path "~/.emacs.d/site-lisp/cobol-mode")

(setq auto-mode-alist (append auto-mode-alist
			      '(("\\.cob$" . cobol-mode))
			      '(("\\.cbl$" . cobol-mode))
			      '(("\\.rtn$" . cobol-mode))
			      '(("\\.lay$" . cobol-mode))
			      '(("\\.cpy$" . cobol-mode))
			      ))
(autoload 'cobol-mode "cobol-mode"
  "Major mode for editing COBOL source files." t nil)
