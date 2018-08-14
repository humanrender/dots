(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(package-selected-packages (quote (use-package))))
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

(when (string= system-type "darwin")       
  (setq dired-use-ls-dired nil)) ;; dired in macOS
(setq inhibit-startup-screen t) ;; No split screen on startup
(delete-selection-mode 1) ;; Delete selection when writing text
(setq-default indent-tabs-mode nil) ;; Tabs or spaces
(setq-default tab-width 2) ;; Default tab size
(setq visible-bell nil) ;; No bell
(setq ring-bell-function 'ignore) ;; No bell!
(global-linum-mode t) ;; line numbers
(add-to-list 'default-frame-alist '(font . "Inconsolata 20" )) ;; Font size

(use-package spacemacs-theme
  :ensure t
  :defer t
  :init (load-theme 'spacemacs-dark t))

(use-package smart-mode-line
  :ensure t
  :config
  (setq sml/theme 'dark)
  (sml/setup)
 )
