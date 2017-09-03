
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load-file "~/.emacs.d/conf/general.el") ;; general configuration
(load-file "~/.emacs.d/conf/melpa.el") ;; melpa configuration and custom vars
(load-file "~/.emacs.d/conf/langs.el") ;; Language modes
(load-file "~/.emacs.d/conf/themes.el") ;; load themes
(load-file "~/.emacs.d/conf/clipboard.el") ;; clipboard configuration
(load-file "~/.emacs.d/conf/better-defaults.el") ;; require better-defaults
(load-file "~/.emacs.d/conf/multiple-cursors.el") ;; multiple-cursors configuration
