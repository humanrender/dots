(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))

;; for better jsx syntax-highlighting in web-mode
;; - courtesy of Patrick @halbtuerke
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
    (let ((web-mode-enable-part-face nil))
      ad-do-it)
    ad-do-it))

;; (defadvice js-jsx-indent-line (after js-jsx-indent-line-after-hack activate)
;;   "Workaround sgml-mode and follow airbnb component style."
;;   (let* ((cur-line (buffer-substring-no-properties
;;                     (line-beginning-position)
;;                     (line-end-position))))
;;     (if (string-match "^\\( +\\)\/?> *$" cur-line)
;;       (let* ((empty-spaces (match-string 1 cur-line)))
;;         (replace-regexp empty-spaces
;;                         (make-string (- (length empty-spaces) sgml-basic-offset) 32)
;;                         nil
;;                         (line-beginning-position) (line-end-position))))))
