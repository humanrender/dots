(setq package--init-file-ensured 't) ;; No automatic emacs configuration in init.el
(setq custom-file "~/.emacs.d/conf/melpa.el") ;; Emacs default conf file
(setq inhibit-startup-screen t) ;; No split screen on startup
(delete-selection-mode 1) ;; Delete selection when writing text
(setq-default indent-tabs-mode nil) ;; Tabs or spaces
(setq-default tab-width 2) ;; Default tab size
;; Bell
(setq visible-bell nil)
(setq ring-bell-function 'ignore)
(global-linum-mode t)
(add-to-list 'default-frame-alist '(font . "Inconsolata 20" ))
