(require 'recentf)

;; Mostly from: https://masteringemacs.org/article/find-files-faster-recent-files-package

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



 
