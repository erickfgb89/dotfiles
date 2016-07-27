(require 'cl-lib)

(defun get-cmd-lines (cmd)
  (split-string (shell-command-to-string cmd) "
") )

(defun pare-down-list (pattern field-pairs)
  (if pattern
      (mapcar 'cadr
	      (cl-remove-if-not
	       (lambda (pair)
		 (string-match-p pattern (car pair)))
	       field-pairs))
    (let ((fields (list)))
      (map-y-or-n-p (lambda (pair)
		      (concat "Include line? " (car pair)))
		    (lambda (pair)
		      (setq fields (cons (cadr pair) fields)))
		    field-pairs)
      fields)))

(defun get-fields (line field-numbers)
  (let ((fields (split-string line " +")))
    (mapcar (lambda (f)
	      (nth f fields))
	    field-numbers)))
;    "Generates a list of objects representing a specific field in selected
;lines of output of a shell command. query-on-field is the field number
;(based on a whitespace-based split) on which a user will be asked to
;accept or reject each line, and return-field is the field number that will
;be returned from each accepted line.
;select-pattern will be used to automatically accept/reject a line, if provided"
(defun cmd-to-pairs (cmd query-on-field return-field)
  (mapcar (lambda (l)
	    (get-fields l
			(list query-on-field
			      return-field)))
	  (get-cmd-lines cmd)))

(defun insert-if-prefixed (ret)
  (if current-prefix-arg
      (if (listp ret)
	  (mapc (lambda (line)
;		  (insert "test")
		  (insert
		   (concat line "\n")))
		ret)
	(insert ret))
    ret))


(defun command-parse (cmd query-on-field return-field)
    (interactive
     (list
      (read-string "cmd: " nil nil nil)
      (read-number "query-field: " 0)
      (read-number "return-field: " 0)))
    (insert-if-prefixed
     (pare-down-list nil
		     (cmd-to-pairs cmd query-on-field return-field))))



(defun command-parse-auto (cmd query-on-field return-field search-pattern)
    (interactive
     (list
      (read-string "cmd: " nil nil nil)
      (read-number "query-field: " 0)
      (read-number "return-field: " 0)
      (read-string "pattern: " nil nil nil)))
    (insert-if-prefixed
     (pare-down-list search-pattern
		     (cmd-to-pairs cmd query-on-field return-field))))



(provide 'list-gen)
