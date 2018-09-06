
(require 'shortcuts)

(use-package eshell
  :config
  (add-shortcuts
   '(("e" . select-or-start-eshell)))
  :init
  (setenv "PATH"
          (replace-regexp-in-string
           "~"
           (getenv "HOME")
           (concat "~/.rbenv/shims:"
                   "~/.asdf/shims:"
                   "~/.asdf/bin:"
                   "~/.cabal/bin:"
                   "~/dev/eventer-workstation-utils/bin:"
                   "/usr/local/bin:"
                   "~/Library/Python/3.6/bin:"
                   "~/.local/bin:"
                   (getenv "PATH"))))
  (setq exec-path
        (append exec-path
                (mapcar (lambda (path)
                          (replace-regexp-in-string
                           "~"
                           (getenv "HOME")
                           path))
                        '("~/.rbenv/shims"
                          "~/.asdf/shims"
                          "~/.asdf/bin"
                          "~/.cabal/bin"
                          "~/dev/eventer-workstation-utils/bin"
                          "~/Library/Python/3.6/bin"
                          "~/.local/bin"
                          "/usr/local/bin")))))

(defun select-or-start-eshell ()
    "Select visible eshell window or select/create eshell buffer in this window"
  (interactive)
   (let ((e-win (get-buffer-window "*eshell*")))
     (cond (e-win (select-window e-win))
	   ((get-buffer "*eshell*") (switch-to-buffer "*eshell*"))
	   (t (eshell)))))

(setq eshell-prompt-function
      (lambda ()
        (let ((frame 'eshell-prompt)
              (path 'eshell-ls-directory)
              (vcs 'eshell-ls-readonly)
              (data 'dired-ignored)
              (err 'dired-warning))
       (concat
        (propertize "┌─[" 'face 'eshell-prompt)
        (propertize (concat (eshell/pwd)) 'face path)
        (propertize "@" 'face frame)
        (if (magit-get-current-branch)
            (propertize (magit-get-current-branch) 'face vcs)
            (propertize "z" 'face vcs))
        (propertize "]──[" 'face frame)
        (propertize (format-time-string "%H:%M" (current-time)) 'face data)
        (propertize "]" 'face frame)
        (if (member (car
                     (split-string
                      (symbol-name (projectile-project-type)) "-"))
                    '("rails" "ruby"))
            (let ((v (shell-command-to-string "rbenv version")))
              (string-match
               "\\([[:digit:]]+\.[[:digit:]]+\.[[:digit:]]+\\)" v)
              (concat
               (propertize "──[" 'face frame)
               (propertize (match-string 1 v)
                           'face data)
               (propertize "]" 'face frame))))
        (if (not (eq 0 eshell-last-command-status))
            (concat
             (propertize "──[" 'face frame)
             (propertize (number-to-string
                          eshell-last-command-status)
                         'face err)
             (propertize "]" 'face frame)))
        "\n"
        (propertize "└─>" 'face frame)
        (propertize (if (= (user-uid) 0) " #" " $") 'face frame)
        " "
        ))))

;; from https://www.emacswiki.org/emacs/EshellBmk
;; eshell/bmk - version 0.1.3

(defun pcomplete/eshell-mode/bmk ()
  "Completion for `bmk'"
  (pcomplete-here (bookmark-all-names)))

(defun eshell/bmk (&rest args)
  "Integration between EShell and bookmarks.
For usage, execute without arguments."
  (setq args (eshell-flatten-list args))
  (let ((bookmark (car args))
        filename name)
    (cond
     ((eq nil args)
      (format "Usage: 
* bmk BOOKMARK to
** either change directory pointed to by BOOKMARK
** or bookmark-jump to the BOOKMARK if it is not a directory.
* bmk . BOOKMARK to bookmark current directory in BOOKMARK.
Completion is available."))
     ((string= "." bookmark)
      ;; Store current path in EShell as a bookmark
      (if (setq name (car (cdr args)))
          (progn
            (bookmark-set name)
            (bookmark-set-filename name (eshell/pwd))
            (format "Saved current directory in bookmark %s" name))
        (error "You must enter a bookmark name")))
     (t
       ;; Check whether an existing bookmark has been specified
       (if (setq filename (bookmark-get-filename bookmark))
           ;; If it points to a directory, change to it.
           (if (file-directory-p filename)
               (eshell/cd filename)
             ;; otherwise, just jump to the bookmark 
             (bookmark-jump bookmark))
         (error "%s is not a bookmark" bookmark))))))

;; end eshell/bmk
