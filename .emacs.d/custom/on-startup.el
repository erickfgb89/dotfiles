(defconst animate-n-steps 10)
(defun emacs-reloaded ()
  (animate-string (concat ";; Initialization successful, welcome to "
  			  (substring (emacs-version) 0 16)
			  ".")
		  0 0)
  (newline-and-indent)  (newline-and-indent))

(add-hook
 'emacs-startup-hook ; not after-init-hook
 (lambda ()
   (emacs-reloaded)
   ))
