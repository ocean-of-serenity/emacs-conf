;; Ensure emacs has package management
(require 'package)

;; Add melpa to package database
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Install use-package for easier package management in config file
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

;; Install Spacemacs theme
(unless (package-installed-p 'spacemacs-theme)
	(package-refresh-contents)
	(package-install 'spacemacs-theme))

;; Load emacs lisp code from orgmode config file
(org-babel-load-file (expand-file-name "~/.emacs.d/conf.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" default)))
 '(line-number-mode nil)
 '(package-selected-packages
   (quote
    (sudo-edit hungry-delete switch-window rainbow-mode avy smex ido-vertical-mode org-bullets beacon exwm-config spacemacs-theme which-key use-package exwm))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "GOOG" :family "Source Code Pro")))))
