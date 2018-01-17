(use-package multi-term
  :ensure t
  :config
  (setq multi-term-program "/bin/zsh")
  (add-hook 'term-mode-hook
            (lambda ()
              (setq term-buffer-maximum-size 10000)
              (define-key term-raw-map (kbd "C-y") 'term-paste)
            ))
  )
