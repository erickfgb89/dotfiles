(require 'eshell)
(require 'em-smart)
(setq
 eshell-where-to-jump 'begin
 eshell-review-quick-commands nil
 eshell-smart-space-goes-to-end t)

(global-set-key (kbd "C-x *") 'eshell)

(add-hook 'eshell-mode-hook
	  (lambda ()
	    (let ((home (getenv "HOME")))
	      (setq eshell-path-env (replace-regexp-in-string
				     "~"
				     home
				     (concat
				      "~/.asdf/bin:"
				      "~/.asdf/shims:"
				      "~/.rbenv/shims:"
				      "/usr/local/bin:"
				      eshell-path-env)))
	      (setenv "PATH" (replace-regexp-in-string
			      "~"
			      home
			      (concat
			       "~/.asdf/bin:"
			       "~/.asdf/shims:"
			       "~/.rbenv/shims:"
			       "/usr/local/bin:"
			       (getenv "PATH")))))))
