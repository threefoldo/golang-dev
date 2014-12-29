
; list the packages you want
(setq package-list '(starter-kit
                     starter-kit-js
                     go-mode
                     go-play
                     go-projectile
                     go-snippets
                     go-stacktracer
                     go-eldoc
                     go-errcheck))

(require 'package)
(add-to-list 'package-archives 
	     '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

                                        ; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

                                        ; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

