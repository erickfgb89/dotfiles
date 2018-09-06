;; add some exta memory for startup before gc
;; set debug on error/quit in case we run into something bad
(let ((gc-cons-threshold (* 25 1024 1024))
      (debug-on-error t)
      (debug-on-quit t))

  ;; Run the rest of our init from README.org
  (require 'org)
  (org-babel-load-file
   (expand-file-name "README.org" user-emacs-directory))

  (garbage-collect))
