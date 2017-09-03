(defvar w 2)

(defun setup-indent (width)
  (setq-default indent-tabs-mode nil)
  (setq-default tab-width width) ; default tab size
  ;; (setq css-indent-offset width)
  ;; (setq c-basic-offset width)
  ;; (setq cperl-indent-level width)
  ;; (setq css-indent-level width)
  ;; (setq css-indent-offset width)
  ;; (setq web-mode-markup-indent-offset width)
  ;; (setq web-mode-css-indent-offset width)
  ;; (setq web-mode-code-indent-offset width)
  ;; (setq web-mode-attr-indent-offset width)

  ;; (setq js-indent-level width)
  ;; (setq js2-basic-offset width)
)

(defun set-jsx-indentation ()
  (setq-local sgml-basic-offset 2)
  (setq sgml-attribute-offset 0)
)

(setup-indent w)
(add-hook 'js-jsx-mode-hook #'set-jsx-indentation)
;; (add-hook 'web-mode-hook 'setup-indent)

(defun global-disable-mode (mode-fn)
  "Disable `MODE-FN' in ALL buffers."
  (interactive "a")
  (dolist (buffer (buffer-list))
    (with-current-buffer buffer
      (funcall mode-fn -1))))
