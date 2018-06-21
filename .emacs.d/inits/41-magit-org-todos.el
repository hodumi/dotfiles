

(require 'magit-org-todos)

(magit-add-section-hook
  'magit-status-sections-hook
  'magit-org-todos-insert-org-todos
  'magit-insert-staged-changes
  t)
