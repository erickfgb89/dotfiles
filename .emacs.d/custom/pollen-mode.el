(require 'shortcuts)

(use-package pollen-mode
  :commands insert-lozenge ;no reason to insert a lozenge except in pollen
  :init
  (defun insert-lozenge ()
    (interactive)
    (insert-char #x25CA))
  (add-shortcuts '(("l" . insert-lozenge))))
