(setq
 backup-by-copying t
 backup-directory-alist
 `((".*" . ,temporary-file-directory))
 auto-save-file-name-transforms
 `((".*" ,temporary-file-directory t))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)

;; delete old backups
(message "Deleting old backup files")
(let ((week (* 60 60 24 7))
      (current (float-time (current-time))))
  (dolist (file (directory-files temporary-file-directory t))
    (when (and (backup-file-name-p file)
	       (> (- current (float-time (nth 5 (file-attributes file))))
		  week))
      (message "%s" file)
      (delete-file file))))
      

