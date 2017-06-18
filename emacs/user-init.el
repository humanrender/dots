(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint)))
(setq-default git-magit-status-fullscreen t)
