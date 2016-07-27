; text highlights with ##
(add-hook 'text-mode-hook
	  (lambda ()
	    (font-lock-add-keywords nil
				    '(("##.*$" . font-lock-keyword-face)))))

(provide 'text-comments)
