;; JS, CSS and HTML
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
