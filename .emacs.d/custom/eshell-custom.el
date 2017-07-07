(require 'shortcuts)

(use-package eshell
  :init
  (setenv "PATH"
	(replace-regexp-in-string "~"
				  (getenv "HOME")
				  (concat "~/.rbenv/shims:"
					  "~/.asdf/shims:"
					  "~/.asdf/bin:"
					  "~/.cabal/bin:"
					  "/usr/local/bin:"
					  (getenv "PATH"))))
  )

;; (setenv "PATH"
;; 	(replace-regexp-in-string "~"
;; 				  (getenv "HOME")
;; 				  (concat "~/.rbenv/shims:"
;; 					  "~/.asdf/shims:"
;; 					  "~/.asdf/bin:"
;; 					  "~/.cabal/bin:"
;; 					  "/usr/local/bin:"
;; 					  (getenv "PATH"))))

(defun select-or-start-eshell ()
    "Select visible eshell window or select/create eshell buffer in this window"
  (interactive)
   (let ((e-win (get-buffer-window "*eshell*")))
     (cond (e-win (select-window e-win))
	   ((get-buffer "*eshell*") (switch-to-buffer "*eshell*"))
	   (t (eshell)))))

(add-shortcuts (list
		(cons "e" 'select-or-start-eshell)))
