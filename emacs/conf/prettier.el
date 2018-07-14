(use-package prettier-js
  :ensure t
  :after projectile
  :config
  (add-hook 'web-mode-hook #'(lambda ()
    (enable-minor-mode '("\\.jsx?\\'" . prettier-js-mode))))
  (add-hook 'web-mode-hook #'(lambda ()
    (enable-minor-mode '("\\.tsx?\\'" . prettier-js-mode))))
  )
