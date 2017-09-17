(use-package smart-mode-line
  :ensure t
  :config
  (setq sml/theme 'dark)
  (sml/setup)
 )

(use-package spacemacs-theme
  :ensure t
  :init (load-theme 'spacemacs-dark t) )
