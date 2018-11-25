(global-linum-mode)
(column-number-mode 1)
(menu-bar-mode 0)
(electric-pair-mode)

(global-whitespace-mode)

(setq whitespace-style '(face
                         tabs tab-mark
                         lines-tail
                         trailing))


(custom-set-variables
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 )

(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)

(setq c-basic-offset 4
      c-default-style "bsd"
      )

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(global-set-key (kbd "C-c C-<left>") 'windmove-left)
(global-set-key (kbd "C-c C-<right>") 'windmove-right)
(global-set-key (kbd "C-c C-<up>") 'windmove-up)
(global-set-key (kbd "C-c C-<down>") 'windmove-down)
