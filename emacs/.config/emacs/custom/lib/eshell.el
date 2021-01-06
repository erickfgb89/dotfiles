;; example prompt
;; ┌─[/path/to/cwd@branch]──[hh:mm]──[rbenv_version]──[exit_code_if_error]
;; └─> $
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

