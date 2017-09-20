(use-package multiple-cursors
  :ensure t
  :bind (
         ("ESC <down>" . mc/mark-next-like-this)
         ("ESC <up>" . mc/mark-prev-like-this)
        ))
