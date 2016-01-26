(setq auto-mode-alist
     (cons (cons "\\.as$" 'hsp-mode) auto-mode-alist))
(setq auto-mode-alist
     (cons (cons "\\.hsp$" 'hsp-mode) auto-mode-alist))
(autoload 'hsp-mode "hsp-mode" "Hot Soup Processor mode" t)
(setq hsp-help-location "c:/bin/hsp/hsphelp")
