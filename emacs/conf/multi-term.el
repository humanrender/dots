(defun multi-term-face-mode ()
  "Change font for multi-term items."
  (interactive)
  (setq buffer-face-mode-face '(:family "Inconsolata" :height 150))
  (buffer-face-mode))

(use-package multi-term
  :ensure t
  :config
  (setq multi-term-program "/bin/zsh")
  (add-hook 'term-mode-hook
            (lambda ()
              (setq term-buffer-maximum-size 10000)
              (define-key term-raw-map (kbd "C-y") 'term-paste)
              ))
  (add-hook 'term-mode-hook 'multi-term-face-mode)
  )
