;;Initialize package manager
(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)

;; https://github.com/jwiegley/use-package
(setq use-package-always-ensure t)

;; TODO write time of last update so we only do this on new deploys
;; and periodically
;;(package-refresh-contents)

;;installed packages
;; (mapc
;;  (lambda (pkg)
;;    (package-install pkg))
;;  '(;column-marker
;;    haskell-mode
;;    markdown-mode
;;    markdown-preview-mode
;;    recentf-ext
;;    websocket
;;    yaml-mode
;;    sublimity
;;    workgroups2
;;    lua-mode
;;    highlight-chars
;;    caps-lock
;;    magit
;;    enh-ruby-mode
;;    sr-speedbar
;;    projectile
;;    projectile-speedbar
;;    inf-ruby
;;    ac-inf-ruby
;;    robe
;;    groovy-mode
;;    color-theme-solarized
;;    company-inf-ruby
;;    restclient
;;    use-package
;;    god-mode
;;    terraform-mode
;;    rainbow-delimiters
;;    undo-tree
;;    mode-icons
;;    sx
;;    howdoi
;;    helm
;;    elixir-mode))


;;sublimity
;;(require 'sublimity-map)
;;(require 'sublimity-scroll)
;;(require 'sublimity-attractive) ;buffer truncate & center
;;(sublimity-mode 1)
;;(sublimity-map-set-delay nil)
