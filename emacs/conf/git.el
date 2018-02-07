(use-package magit
  :ensure t
  :bind ("C-c g s" . magit-status)
  :config
  (setq magit-save-repository-buffers nil)
  (setq magit-restore-window-configuration t) ; that's the default actually
  (setq magit-status-buffer-switch-function
        (lambda (buffer) ; there might already be an Emacs function which does this
          (pop-to-buffer buffer)
          (delete-other-windows))))
