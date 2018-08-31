(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(package-selected-packages
   (quote
    (org-mode ag json-mode web-mode smartparens use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(load "~/.emacs.d/files/general")

(use-package spacemacs-theme
	:ensure t
	:defer t
	:init (load-theme 'spacemacs-dark t))

(use-package smart-mode-line
	:ensure t
	:config
	(setq sml/theme 'dark)
	(sml/setup))

(use-package web-mode
	:ensure t
	:mode ("\\.js[x]?\\'" . web-mode)
	:config
	(setq web-mode-markup-indent-offset 2)
	(setq web-mode-css-indent-offset 2)
	(setq web-mode-code-indent-offset 2)
	(setq web-mode-attr-indent-offset 2)
	(setq web-mode-content-types-alist
		    '(("jsx" . "\\.js[x]?\\'"))))

(use-package json-mode
	:ensure t
	:config
	(setq js-indent-level 2))

(use-package smartparens
	:ensure t
	:hook (web-mode . smartparens-mode))

(use-package typescript
  :mode ("\\.ts[x]?\\'" . typescript-mode)
  :ensure t)

(use-package company
  :ensure t
  :config
  (global-company-mode))

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(use-package tide
  :ensure t
  :after (typescript company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode))
  :config
  (setq typescript-indent-level 2))

(use-package add-node-modules-path
  :ensure t
  :hook
  ((web-mode . add-node-modules-path)
   (typescript-mode . add-node-modules-path)))

(use-package prettier-js
  :ensure t
  :hook
  ((web-mode . prettier-js-mode)
   (typescript-mode . prettier-js-mode)))

(use-package projectile
  :ensure t
  :bind
  (("C-x p s" . projectile-switch-open-project)
	 ("C-x p" . projectile-switch-project)
   ("M-t" . projectile-find-file)
   ("M-p" . projectile-ag))
  :config
  (projectile-global-mode)
  (setq projectile-project-root-files '("package.json"))
  (setq projectile-project-root-files-bottom-up '("package.json"))
  (projectile-register-project-type 'npm '("package.json")
                                    :compilation-dir "./"
                                    :compile "yarn dist"
                                    :test "yarn test"
                                    :run "yarn serve:dev"
                                    :test-suffix "Test"))

(use-package ag
  :ensure t
  :config
  (setq ag-highlight-search t))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package org
  :ensure t)
