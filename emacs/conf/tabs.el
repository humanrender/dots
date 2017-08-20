(defun setup-indent (width)
  (setq indent-tabs-mode nil) ; set tabs as spaces
  (setq-default tab-width width) ; default tab size
  (setq tab-width width) ; tab size
  (setq css-indent-offset width)
  (setq c-basic-offset width)
  (setq cperl-indent-level width)
  (setq css-indent-level width)
  (setq css-indent-offset width)
  (setq web-mode-markup-indent-offset width)
  (setq web-mode-css-indent-offset width)
  (setq web-mode-code-indent-offset width)
  (setq web-mode-attr-indent-offset width)

  (setq js-indent-level width)
  (setq js2-basic-offset width)
  (setq sgml-basic-offset width)
  (setq sgml-attribute-offset width)
)

(setup-indent 2) ; setup indentation

;; for better jsx syntax-highlighting in web-mode
;; - courtesy of Patrick @halbtuerke
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
    (let ((web-mode-enable-part-face nil))
      ad-do-it)
    ad-do-it))
