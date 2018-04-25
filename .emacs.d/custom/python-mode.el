(use-package python
  :mode ("\\.py\\'" . python-mode)
  :interpreter ("python" . python-mode)
  :config
  (message "in python mode")
  (setq python-indent 2
        python-indent-offset 2))
