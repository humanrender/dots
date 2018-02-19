(use-package multiple-cursors
  :ensure t
  :init
  (global-unset-key (kbd "M-<down-mouse-1>"))
  (global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)
  :bind (
         ("M-<down>" . mc/mark-next-like-this)
         ("M-<up>" . mc/mark-previous-like-this)
         )
  )
