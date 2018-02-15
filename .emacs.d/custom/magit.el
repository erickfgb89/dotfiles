(use-package magit
  :config
  (add-shortcuts
   '(("g s" . magit-status)
     ("g c" . magit-commit)
     ("g p" . magit-push)
     ("g d" . magit-pull))))
