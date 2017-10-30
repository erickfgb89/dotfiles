;;Initialize package manager
(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))

;; TODO write time of last update so we only do this on new deploys
;; and periodically
;;(package-refresh-contents)

;;installed packages
(mapc
 (lambda (pkg)
   (package-install pkg))
 '(column-marker
   haskell-mode
   markdown-mode
   markdown-preview-mode
   neotree
   recentf-ext
   sr-speedbar
   websocket
   yaml-mode
   sublimity
   workgroups2
   lua-mode
   highlight-chars
   caps-lock
   ecb
   magit
   enh-ruby-mode
   projectile
   ;;flymake-ruby
   inf-ruby
   ac-inf-ruby
   robe
   groovy-mode
   color-theme-solarized
   company-inf-ruby
   restclient
   use-package
   god-mode
   terraform-mode
   elixir-mode))


;;sublimity
;;(require 'sublimity-map)
;;(require 'sublimity-scroll)
;;(require 'sublimity-attractive) ;buffer truncate & center
;;(sublimity-mode 1)
;;(sublimity-map-set-delay nil)
