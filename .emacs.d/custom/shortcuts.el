(require 'shortcuts)

(add-shortcuts
 (list
  (cons "o" 'other-window)
  (cons "k" 'kill-this-buffer)
  (cons "s" 'save-buffer)
  (cons "c" 'caps-lock-mode)
  (cons "x" 'kmacro-end-or-call-macro)
  (cons "r" 'repeat)
  (cons "p s" 'sr-speedbar-select-window)
  )
 )

(global-set-key (kbd "C-?") 'comment-or-uncomment-region)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-z") 'god-mode)
