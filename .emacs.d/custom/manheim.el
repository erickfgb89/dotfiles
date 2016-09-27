(require 'shortcuts)

(defun set-active-card (card-id)
  (interactive "sCard ID: ")
  (with-temp-file "~/.gitmessage"
    (insert (concat "["
		    card-id
		    "] "))))

       
