;;turn off backup files
(setq make-backup-files nil)

;;set zenburn themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.org/packages/")))

(package-initialize)
(require 'auto-complete)
(require 'auto-complete-config)
(global-auto-complete-mode t)

;;set line number
(global-linum-mode t)
(setq linum-format "%4d \u2502 ")
