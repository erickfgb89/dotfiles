(require 'shortcuts)

(add-shortcuts
 (list
  (cons "o" 'other-window)
  (cons "k" 'kill-this-buffer)
  (cons "s" 'save-buffer)
  (cons "x" 'kmacro-end-or-call-macro)
  (cons "r" 'ido-recentf-open)
  (cons "p s" 'sr-speedbar-select-window)
  (cons "f" 'find-file)
  (cons "b" 'switch-to-buffer)
  )
 )

(global-set-key (kbd "C-?") 'comment-or-uncomment-region)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-z") 'god-mode)
