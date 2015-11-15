
; [[http://qiita.com/tadsan/items/c859c5c04724cbda75fc][指定したマイナーモードを表示しない(diminish篇)]]からコピー
(defmacro safe-diminish (file mode &optional new-name)
  "https://github.com/larstvei/dot-emacs/blob/master/init.org"
  `(with-eval-after-load ,file
     (diminish ,mode ,new-name)))



(safe-diminish "abbrev" 'abbrev-mode)
(safe-diminish "auto-complete" 'auto-complete-mode)
;; (safe-diminish "flycheck" 'flycheck-mode)
(safe-diminish "google-this" 'google-this-mode)
(safe-diminish "helm-mode" 'helm-mode)
(safe-diminish "rainbow-mode" 'rainbow-mode)
(safe-diminish "undo-tree" 'undo-tree-mode)
(safe-diminish "whitespace" 'global-whitespace-mode)
(safe-diminish "yasnippet" 'yas-minor-mode)

