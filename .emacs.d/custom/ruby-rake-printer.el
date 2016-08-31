(defun add-all-prints ()
  "loop through all tasks in this buffer, adding a print to each"
  ;we'll be at the end of the line here ($)
  (if (not (re-search-forward "\\(task :\\|file \\).*do.*$")) 
      'done
    (let ((task-def
	   (concat
	    "puts 'task at "
	    (prin1-to-string (line-number-at-pos))
	    " : "
	    (buffer-substring
	     (line-beginning-position)
	     (line-end-position))
	    "'")))
      (progn
	(newline-and-indent)
	(insert "#AUTOPRINT")
	(newline-and-indent)
	(insert task-def)
	(add-all-prints)))))
    
  

(defun add-prints ()
  "Add puts calls at the start of each task definition"
  (interactive)
  (with-current-buffer (current-buffer)
    (save-excursion
      (goto-char (point-min))
      (add-all-prints))))

(defun kill-all-prints ()
  "Loop through all prints added with add-prints and remove them"
  (if (not (search-forward "#AUTOPRINT"))
      'done
    (delete-region
     (line-beginning-position)
     (+ (line-end-position) 1))
    (delete-region
     (line-beginning-position)
     (+ (line-end-position) 1))
    (kill-all-prints)))

(defun kill-prints ()
  "Remove automatic puts calls"
  (interactive)
  (with-current-buffer (current-buffer)
    (save-excursion
      (goto-char (point-min))
      (kill-all-prints))))

(provide 'ruby-rake-printer)
