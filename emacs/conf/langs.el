;; JS, CSS and HTML
(use-package web-mode
  :ensure t
  :mode ("\\.[jt]s[x]?\\'" . web-mode)
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-attr-indent-offset 2)
  (setq web-mode-content-types-alist
        '(("jsx" . "\\.[jt]s[x]?\\'"))))

(use-package scss-mode
  :ensure t
  :config
  (setq css-indent-offset 2))

(use-package json-mode
  :ensure t
  :config
  (setq js-indent-level 2))

(use-package yaml-mode
  :ensure t)

(use-package typescript-mode
  :ensure t)

(use-package tide
  :ensure t
  :after (typescript-mode flycheck)
  :config
  (defun setup-tide-mode ()
    (interactive)
    (tide-setup)
    (flycheck-mode +1)
    (setq flycheck-check-syntax-automatically '(save mode-enabled))
    (eldoc-mode +1)
    (tide-hl-identifier-mode +1)
    ;; company is an optional dependency. You have to
    ;; install it separately via package-install
    ;; `M-x package-install [ret] company`
    (company-mode +1))

  ;; aligns annotation to the right hand side
  (setq company-tooltip-align-annotations t)

  ;; formats the buffer before saving
  (add-hook 'before-save-hook 'tide-format-before-save)

  (add-hook 'typescript-mode-hook #'setup-tide-mode))

(use-package gfm-mode
  :ensure t)

(use-package markdown-mode
  :ensure t
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "macdown"))
