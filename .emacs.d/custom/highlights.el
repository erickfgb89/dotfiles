;;https://www.emacswiki.org/emacs/highlight-chars.el
;;(require 'highlight-chars)

;;https://www.emacswiki.org/emacs/EightyColumnRule

(if (fboundp 'global-font-lock-mode)
    (global-font-lock-mode 1))

(setq frame-background-mode 'dark)
(load-theme 'solarized t)
(enable-theme 'solarized)

;;(set-default-font "DejaVu Sans Mono-10")
(set-default-font "Inconsolata-12")

;;text highlights with ##
(font-lock-add-keywords
 'text-mode '(("##.*$" . font-lock-keyword-face)))

(setq-default show-trailing-whitespace nil)
