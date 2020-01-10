
(setq plantuml-jar-path (expand-file-name "~/.plantuml/plantuml.jar"))
(setq plantuml-default-exec-mode 'jar)
(setq plantuml-output-type "png")
(setq plantuml-jar-args '("-charset" "UTF-8" "-Dfile.encoding" "UTF-8" ))

(require 'ob-plantuml)
(setq org-plantuml-jar-path plantuml-jar-path)
