(global-set-key
 (kbd "C-M-o")
 'other-window)

(mapc
 (lambda (shortcut)
   (global-set-key (kbd (car shortcut))
		   (cdr shortcut)))
 '(("C-M-o" . other-window)
   ("C-M-k" . kill-buffer)
   ("C-M-x" . kill-buffer-and-window)
   ("C-M-0" . delete-window)
   ("C-M-1" . delete-other-windows)
   ("C-M-*" . eshell)
   ("C-M-r" . ido-recentf-open)
   ("C-M-s" . sr-speedbar-open-and-select)
   ("C-M-f" . find-file)))



(provide 'shortcuts)
