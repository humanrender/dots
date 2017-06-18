(defun setup-indent ()
  (setq-default indent-tabs-mode nil) ; set tabs as spaces
  (setq-default tab-width 2) ; default tab size
  (setq tab-width 2) ; tab size
  (setq-default js2-basic-offset 'tab-width)
  (setq-default css-indent-offset 'tab-width)
  (defvaralias 'c-basic-offset 'tab-width)
  (defvaralias 'cperl-indent-level 'tab-width)
  (defvaralias 'js-indent-level 'tab-width)
  (defvaralias 'css-indent-level 'tab-width)
  (defvaralias 'css-indent-offset 'tab-width)
  (defvaralias 'web-mode-markup-indent-offset 'tab-width)
  (defvaralias 'web-mode-css-indent-offset 'tab-width)
  (defvaralias 'web-mode-code-indent-offset 'tab-width)
  (defvaralias 'web-mode-attr-indent-offset 'tab-width)
  )

 (with-eval-after-load 'flycheck
   (dolist (checker '(javascript-eslint javascript-standard))
     (flycheck-add-mode checker 'js2-mode))
   (add-hook 'js-mode-hook #'spacemacs//react-use-eslint-from-node-modules)
   (spacemacs/add-flycheck-hook 'js2-mode)
   )

 ;; turn on flychecking globally
 (add-hook 'after-init-hook #'global-flycheck-mode)

 (setup-indent) ; setup indentation
 (setq-default js2-show-parse-errors nil)
 (setq-default js2-strict-missing-semi-warning nil)
 (setq-default js2-strict-trailing-comma-warning nil)
 (delete-selection-mode 1)
 (global-git-commit-mode t)