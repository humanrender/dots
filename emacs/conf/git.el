(use-package magit
  :ensure t
  :bind ("C-c g s" . magit-status)
  :config
  (setq magit-save-repository-buffers nil))
