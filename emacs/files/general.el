(when (string= system-type "darwin")       
  (setq dired-use-ls-dired nil)) ;; dired in macOS
(setq inhibit-startup-screen t) ;; No split screen on startup
(delete-selection-mode 1) ;; Delete selection when writing text
(setq-default indent-tabs-mode nil) ;; Tabs or spaces
(setq-default tab-width 2) ;; Default tab size
(setq visible-bell nil) ;; No bell
(setq ring-bell-function 'ignore) ;; No bell!
(global-linum-mode t) ;; line numbers
(add-to-list 'default-frame-alist '(font . "Inconsolata 20" )) ;; Font size

(setq mouse-wheel-follow-mouse 't)

(defvar alternating-scroll-down-next t)
(defvar alternating-scroll-up-next t)

(defun alternating-scroll-down-line ()
  (interactive "@")
    (when alternating-scroll-down-next
      (scroll-down-line))
    (setq alternating-scroll-down-next (not alternating-scroll-down-next)))

(defun alternating-scroll-up-line ()
  (interactive "@")
    (when alternating-scroll-up-next
      (scroll-up-line))
    (setq alternating-scroll-up-next (not alternating-scroll-up-next)))

(global-set-key (kbd "<mouse-4>") 'alternating-scroll-down-line)
(global-set-key (kbd "<mouse-5>") 'alternating-scroll-up-line)
