(require 'eshell)
(require 'em-smart)
(require 'shortcuts)

(setq
 eshell-where-to-jump 'begin
 eshell-review-quick-commands nil
 eshell-smart-space-goes-to-end t)

;; Found exec-path here
;; https://www.emacswiki.org/emacs/ExecPath
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
				      "~/.cabal/bin:"
				      "~/.local/bin:"
				      "/usr/local/bin:"
				      eshell-path-env)))
	      (setq exec-path (replace-regexp-in-string
				     "~"
				     home
				     (concat
				      "~/.asdf/bin:"
				      "~/.asdf/shims:"
				      "~/.rbenv/shims:"
				      "~/.cabal/bin:"
				      "~/.local/bin:"
				      "/usr/local/bin:"
				      exec-path)))
	      (setenv "PATH" (replace-regexp-in-string
			      "~"
			      home
			      (concat
			       "~/.asdf/bin:"
			       "~/.asdf/shims:"
			       "~/.rbenv/shims:"
			       "~/.cabal/bin:"
			       "~/.local/bin"
			       "/usr/local/bin:"
			       (getenv "PATH")))))))

(defun select-or-start-eshell ()
    "Select visible eshell window or select/create eshell buffer in this window"
  (interactive)
   (let ((e-win (get-buffer-window "*eshell*")))
     (cond (e-win (select-window e-win))
	   ((get-buffer "*eshell*") (switch-to-buffer "*eshell*"))
	   (t (eshell)))))

(add-shortcuts (list
		(cons "e" 'select-or-start-eshell)))
