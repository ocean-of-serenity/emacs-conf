
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

(setq inhibit-startup-message t)
(setq initial-scratch-message "")

(setq make-backup-files nil)
(setq auto-save-default nil)

(setq scroll-conservatively 100)

(global-hl-line-mode)


(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(use-package try
  :ensure t)

(use-package org
  :ensure t
  :hook (org-mode . org-indent-mode))

(use-package org-bullets
  :after org
  :ensure t
  :hook (org-mode . (lambda () (org-bullets-mode 1))))

(use-package evil
  :ensure t
  :config (evil-mode 1))

(use-package evil-org
  :ensure t
  :after (evil org)
  :config
  (add-hook 'org-mode-hook 'evil-org-mode)
  (add-hook 'evil-org-mode-hook
            (lambda ()
              (evil-org-set-key-theme)))
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package linum-relative
  :ensure t
  :hook ((org-mode prog-mode text-mode) . (lambda () (linum-relative-mode 1)))) 

(use-package hlinum
  :ensure t
  :config (hlinum-activate))

(use-package solarized-theme
  :ensure t)

(use-package powerline
  :ensure t
  :config (powerline-default-theme))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(package-selected-packages
   (quote
    (hlinum powerline solarized-theme linum-relative which-key evil-org evil org-bullets try use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
