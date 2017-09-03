(defvar width 2)
(setq-default indent-tabs-mode nil) ; Tabs or spaces
(setq-default tab-width width) ; Default tab size

(defun setup-indent ()
  ;; (setq css-indent-offset width)
  ;; (setq c-basic-offset width)
  ;; (setq cperl-indent-level width)
  ;; (setq css-indent-level width)
  ;; (setq css-indent-offset width)
  (setq web-mode-markup-indent-offset width)
  (setq web-mode-css-indent-offset width)
  (setq web-mode-code-indent-offset width)
  (setq web-mode-attr-indent-offset width)
)

(add-hook 'web-mode-hook 'setup-indent)
