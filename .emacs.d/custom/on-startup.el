(defun open-speedbar (proc evt)
  (sr-speedbar-open))

(add-hook
 'emacs-startup-hook ; not after-init-hook
 (lambda ()
   (setq
    ;; backups
    backup-by-copying t
    backup-directory-alist
    `((".*" . ,temporary-file-directory))
    auto-save-file-name-transforms
    `((".*" ,temporary-file-directory t))
    delete-old-versions t
    kept-new-versions 6
    kept-old-versions 2
    version-control t
    ;; use-package
    use-package-always-ensure t)))
