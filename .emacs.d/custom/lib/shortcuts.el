(setq custom-prefixes '("C-M-" "C-S-"))

(setq symbol-map '( ( "0" . ")" )
		    ( "1" . "!" )
		    ( "2" . "@" )
		    ( "3" . "#" )
		    ( "4" . "$" )
		    ( "5" . "%" )
		    ( "6" . "^" )
		    ( "7" . "&" )
		    ( "8" . "*" )
		    ( "9" . "(" )
		    ( "'" . "\"" )
		    ( "," . "<" )
		    ( "." . ">" )
		    ( "/" . "?" )
		    ( ";" . ":" )
		    ( "[" . "{" )
		    ( "]" . "}" )
		    ( "\\" . "|" )
		    ( "`" . "~" )
		    ( "-" . "_" )
		    ( "=" . "+" ) ) )

(defun add-shortcuts (defs)
  "Add keyboard shortcuts as defined in defs. Defs is a
list of dotted pairs of keys and functions to execute"
  (dolist (shortcut defs)
    (let ((key  (car shortcut))
	  (func (cdr shortcut)))
      (global-set-key (kbd (concat "C-M-" key)) func)
      (global-set-key (kbd (concat "C-" (shift key))) func))))
;; (defun add-shortcuts (defs)
;;   "Add keyboard shortcuts as defined in defs. Defs is a
;; list of dotted pairs of keys and functions to execute"
;;   (dolist (prefix custom-prefixes)
;;     (mapc
;;      (lambda (shortcut)
;;        (global-set-key
;; 	(kbd (concat prefix (car shortcut)))
;; 	(cdr shortcut)))
;;      defs)))

(defun shift (c)
  (or (cdr (assoc c symbol-map)) (concat "S-" c)))

;; (defun new-pair (a b)
;;   (interactive "s\ns")
;;   (newline-and-indent)
;;   (insert (concat "( \"" a "\" . \"" b "\" )")))
;; (global-set-key
;;  (kbd "C-M-n")
;;  'new-pair)


(provide 'shortcuts)
