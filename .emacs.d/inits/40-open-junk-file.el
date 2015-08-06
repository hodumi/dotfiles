
(require 'open-junk-file)

(setq open-junk-file-format "~/.emacs.d/junk/%Y/%m/%Y-%m-%d-%H%M%S.txt")
(bind-key "C-x j" 'open-junk-file)
