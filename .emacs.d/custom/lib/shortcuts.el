(setq custom-prefixes '("C-M-" "C-S-"))

(defun add-shortcuts (defs)
  "Add keyboard shortcuts as defined in defs. Defs is a
list of dotted pairs of keys and functions to execute"
  (dolist (prefix custom-prefixes)
    (mapc
     (lambda (shortcut)
       (global-set-key
	(kbd (concat prefix (car shortcut)))
	(cdr shortcut)))
     defs)))


(provide 'shortcuts)
