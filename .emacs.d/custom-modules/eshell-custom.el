(require 'eshell)
(require 'em-smart)
(setq eshell-where-to-jump 'begin)
(setq eshell-review-quick-commands nil)
(setq eshell-smart-space-goes-to-end t)

(global-set-key (kbd "C-x *") 'eshell)

(add-hook 'eshell-mode-hook
	  (lambda ()
	    (setq eshell-path-env (concat
				   ;"~/.rbenv/shims:"
				   "/usr/local/bin:"
				   eshell-path-env))
	    (setenv "PATH" (concat
			    ;"~/.rbenv/shims:"
			    "/usr/local/bin:"
			    (getenv "PATH")))))

(provide 'eshell-custom)

