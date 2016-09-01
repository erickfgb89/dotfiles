(require 'recentf)

;; Mostly from: https://masteringemacs.org/article/find-files-faster-recent-files-package

;; 'find-file-read-only apparently uses this shortcut, but
;; I agree that this feature sucks and we can mask it
(global-set-key (kbd "C-c C-c C-r") 'ido-recentf-open)

;; enable recent files
(recentf-mode t)

;; limit to 50 for now
(setq recentf-max-saved-items 50)

(defun ido-recentf-open ()
  "Use `ido-completing-read' to \\[find-file] a recent file"
  (interactive)
  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
      (message "Opening file...")
    (message "Aborting")))


(provide 'recent)
 
