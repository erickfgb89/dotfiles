(setq custom-prefix "C-S-")
(mapc
 (lambda (shortcut)
   (global-set-key (kbd (car shortcut))
		   (cdr shortcut)))
 (list
  ((pair (concat custom-prefix "o") 'other-window)
   (pair (concat custom-prefix "k") 'kill-this-buffer)
   (pair (concat custom-prefix "w") 'kill-buffer-and-window)
   (pair (concat custom-prefix "0") 'delete-window)
   (pair (concat custom-prefix "1") 'delete-other-windows)
   (pair (concat custom-prefix "e") 'eshell)
   (pair (concat custom-prefix "r") 'ido-recentf-open)
   (pair (concat custom-prefix "z") 'sr-speedbar-open-and-select)
   (pair (concat custom-prefix "f") 'find-file)
   (pair (concat custom-prefix "s") 'save-buffer)
   (pair (concat custom-prefix "b") 'switch-to-buffer)
   (pair (concat custom-prefix "c") 'caps-lock-mode)
   (pair (concat custom-prefix "x") 'kmacro-end-or-call-macro))))

(global-set-key (kbd "M-g") 'goto-line)


(provide 'shortcuts)
