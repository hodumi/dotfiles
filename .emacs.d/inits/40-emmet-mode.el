
(require 'emmet-mode)

(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;; indent はスペース2個



  ;; emmet-modeデフォルトのC-jとC-Enterを除外
(unbind-key "C-j" emmet-mode-keymap) 
(unbind-key "C-<enter>" emmet-mode-keymap)
  
  ;; 新しく、C-M-iに追加
(bind-key "C-M-i" 'emmet-expand-yas emmet-mode-keymap)

