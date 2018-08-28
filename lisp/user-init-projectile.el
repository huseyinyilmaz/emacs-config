;;; user-init-projectile.el --- Initialize projectile

;;; Commentary:
;;

;;; Code:

(projectile-mode)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
;; https://github.com/bbatsov/projectile/issues/1183
(setq projectile-mode-line
         '(:eval (format " Projectile[%s]"
                        (projectile-project-name))))
;; (add-hook 'after-init-hook #'projectile-global-mode)

(provide 'user-init-projectile)

;;; user-init-projectile.el ends here
