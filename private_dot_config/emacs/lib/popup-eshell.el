(defvar use-selected-window nil
  "Set to t to use the selected window to run eshell")
(defvar eshell-pre-command-point nil
  "Point before command is run.")
(defcustom eshell-side-window-height 10
  "Height of a side window created for eshell.")
(defcustom eshell-use-side-window 't
  "Set to nil to open eshell in active buffer")

(defun run-eshell (&optional toggle-side-window)
  (interactive "P")
  (setq eshell-use-selected-window (if eshell-use-side-window
                                       toggle-side-window
                                     (null toggle-side-window)))
  ;; if we're in the popup eshell, kill the window
  (if (window-parameter (selected-window) 'window-side)
      (delete-window)
    (if (projectile-project-p)
        (projectile-run-eshell nil) ; run project-specific eshell
      (eshell nil))                 ; run default eshell
    (unless eshell-use-selected-window
      (set-window-dedicated-p   ; don't allow anybody to use the popup window
       (selected-window) t))))

;; set variables:
;; temp-buffer-max-height
;; temp-buffer-max-width
(defun popup-eshell (buffer alist)
  (if eshell-use-selected-window
      (progn
        (display-buffer-same-window buffer alist))
    (display-buffer-in-side-window buffer alist)))

(add-hook 'eshell-pre-command-hook 'eshell-mark-pre-command)
(add-hook 'eshell-post-command-hook 'eshell-resize-window)

(defun eshell-mark-pre-command ()
  "Save point immediately before a command."
  (setq eshell-pre-command-point (point)))

(defun eshell-resize-window ()
  "Resize an eshell side window to fit command output."
  (interactive) ;; for now
  ;; if this is a side window
  (if (and (integer-or-marker-p eshell-pre-command-point)
           (window-parameter (selected-window) 'window-side))
      (let ((height (window-height (selected-window) 'ceiling)))
        (window-resize (selected-window)
                       ;; limit to 80% frame height
                       ;; at least current height
                       ;; add 2 for modeline or whatever
                       (- (min
                           (max
                            (+ 2
                               (count-lines
                                eshell-pre-command-point
                                (point)))
                            height)
                           (floor (* (frame-height) 0.8)))
                          height))
        (recenter -1) ; back to top
        (setq eshell-pre-command-point nil)))) ;reset

(advice-add 'other-window
            :before
            (lambda (&rest args)
              "Shrink eshell side window to default size"
              (let ((window (selected-window)))
                (if (and (string-match-p ".*eshell.*" (buffer-name))
                         (window-parameter window 'window-side))
                    (window-resize window (- eshell-side-window-height
                                             (window-height window 'ceiling)))))))

(advice-add 'other-window
            :filter-args
            (lambda (args)
              "Skip eshell windows in a small lower window during interactive other-window"
              (let ((window (next-window)))
                (if (and (= 1 (car args))
                         (string-match-p ".*eshell.*" (buffer-name (window-buffer window)))
                         (window-parameter window 'window-side))
                    (cons 2 (cdr args))
                  args))))

(advice-add 'wg-switch-to-workgroup
            :after
            (lambda (&optional args)
              "Re-tag eshell side windows"
              (dolist (window (window-list))
                (if (and (window-dedicated-p window)
                         (string-match-p ".*eshell.*" (buffer-name (window-buffer window))))
                    (progn
                      ;; set 'window-side to skip on 'other-window with eshell advice
                      (set-window-parameter window 'window-side 'bottom)
                      (set-window-parameter window 'window-slot '0)
                      ;; preserve window width
                      (window-preserve-size window t t))))))

(add-to-list 'display-buffer-alist
             `("^\\*eshell.*\\*$"
               (popup-eshell)
               (side . bottom)
               (window-height . ,eshell-side-window-height)
               (preserve-size . (t . nil))))

(provide 'popup-eshell)
