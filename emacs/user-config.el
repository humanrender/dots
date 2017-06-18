(defun setup-indent (width)
  (setq indent-tabs-mode nil) ; set tabs as spaces
  (setq-default tab-width width) ; default tab size
  (setq tab-width width) ; tab size
  (setq js2-basic-offset width)
  (setq css-indent-offset width)
  (setq c-basic-offset width)
  (setq cperl-indent-level width)
  (setq js-indent-level width)
  (setq css-indent-level width)
  (setq css-indent-offset width)
  (setq web-mode-markup-indent-offset width)
  (setq web-mode-css-indent-offset width)
  (setq web-mode-code-indent-offset width)
  (setq web-mode-attr-indent-offset width)
)

(defun dotspacemacs/user-config ()
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))

  (setq-default flycheck-disabled-checkers
                (append flycheck-disabled-checkers
                        '(javascript-jshint)))

  (with-eval-after-load 'flycheck
    (dolist (checker '(javascript-eslint javascript-standard))
      (flycheck-add-mode checker 'js2-mode))
    (add-hook 'js-mode-hook #'spacemacs//react-use-eslint-from-node-modules)
    (spacemacs/add-flycheck-hook 'js2-mode)
    )

  ;; turn on flychecking globally
  (add-hook 'after-init-hook #'global-flycheck-mode)
  (setq-default js2-show-parse-errors nil)
  (setq-default js2-strict-missing-semi-warning nil)
  (setq-default js2-strict-trailing-comma-warning nil)
  (delete-selection-mode 1)
  (global-git-commit-mode t)
  (setup-indent 2) ; setup indentation
  (add-hook 'after-change-major-mode-hook (lambda()
    (electric-indent-mode -1)
    )) ; disable automatic indentation
)
