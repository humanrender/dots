(require 'tramp) ;; Require tramp to use helm in dired
(use-package helm-core
  :ensure t)

(use-package helm
  :ensure t
  :bind (("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-x f" . helm-recentf)
         ("M-y" . helm-show-kill-ring)
         ("C-x C-b" . helm-buffers-list)
         ("C-x b" . helm-buffers-list))
  :config (progn
	    (setq helm-buffers-fuzzy-matching t)
            (helm-mode 1)))

(use-package helm-descbinds
  :ensure t
  :bind ("C-h d" . helm-descbinds))

(use-package helm-files
  :bind (:map helm-find-files-map
	      ("M-i" . nil)
	      ("M-k" . nil)
	      ("M-I" . nil)
	      ("M-K" . nil)
	      ("M-h" . nil)
	      ("M-H" . nil)))

(use-package helm-swoop
  :ensure t
  :bind ("M-m" . helm-swoop)
  :init
  (bind-key "M-m" 'helm-swoop-from-isearch isearch-mode-map))

(use-package helm-ag
  :ensure helm-ag
  :bind ("M-p" . helm-projectile-ag)
  :commands (helm-ag helm-projectile-ag)
  :init
  (setq helm-ag-insert-at-point 'symbol
	      helm-ag-command-option "--path-to-ignore ~/.agignore")
  (custom-set-variables
   '(helm-follow-mode-persistent t)))

(use-package helm-projectile
  :ensure t
  :bind ("M-t" . helm-projectile-find-file)
  :config
  (helm-projectile-on))
