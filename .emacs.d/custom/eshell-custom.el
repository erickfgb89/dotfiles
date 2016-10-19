(require 'eshell)
(require 'em-smart)
(setq
 eshell-where-to-jump 'begin
 eshell-review-quick-commands nil
 eshell-smart-space-goes-to-end t)

(global-set-key (kbd "C-x *") 'eshell)

(add-hook 'eshell-mode-hook
	  (lambda ()
	    (setq eshell-path-env (concat
				   ;"~/.asdf/bin:"
				   ;"~/.asdf/shims:"
				   ;"~/.rbenv/shims:"
				   "/usr/local/bin:"
				   eshell-path-env))
	    (setenv "PATH" (concat
			    ;"~/.asdf/bin:"
			    ;"~/.asdf/shims:"
			    ;"~/.rbenv/shims:"
			    "/usr/local/bin:"
			    (getenv "PATH")))))

(setenv "PATH" (concat
		"~/.asdf/bin;"
		"~/.asdf/shims;"
		"~/.rbenv/shims;"
		"/usr/local/bin;"
		(getenv "PATH")))



