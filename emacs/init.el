(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(package-selected-packages (quote (json-mode web-mode smartparens use-package))))
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
  :ensure t)

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
