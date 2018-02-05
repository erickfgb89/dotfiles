(require 'shortcuts)

(use-package helm
  :init
    (setq helm-semantic-fuzzy-match t
          helm-imenu-fuzzy-match t)
  :bind (("M-x" . helm-M-x)
         ("M-y" . helm-show-kill-ring))
  :config
    (add-shortcuts
     '(("f" . helm-find-files)
       ("b" . helm-mini)
       ("h" . helm-command-prefix)))
    (helm-mode))
