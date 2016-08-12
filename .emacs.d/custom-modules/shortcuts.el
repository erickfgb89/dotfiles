(global-set-key
 (kbd "C-M-o")
 'other-window)

(mapc
 (lambda (shortcut)
   (global-set-key (kbd (car shortcut))
		   (cdr shortcut)))
 '(("M-o" . other-window)
   ("M-k" . kill-this-buffer)
   ("M-w" . kill-buffer-and-window)
   ("M-0" . delete-window)
   ("M-1" . delete-other-windows)
   ("M-e" . eshell)
   ("M-r" . ido-recentf-open)
   ("M-s" . sr-speedbar-open-and-select) ; from speedbar-opt (local)
   ("M-f" . find-file)
   ("M-s" . save-buffer)))



(provide 'shortcuts)
