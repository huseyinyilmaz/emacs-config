;;; user-init-anaconda.el --- python anaconda mode initialization.


;;; Commentary:
;;

;;; Code:

;; setup virtual environment path
;; (add-hook 'python-mode-hook
;;           #'(lambda ()
;;               (when (virtualenv-p)
;;                 (setq python-shell-virtualenv-path (virtualenv-current)))
;;               (when (projectile-project-p)
;;                (setenv "PYTHONPATH" (projectile-project-root)))))

(add-hook 'python-mode-hook 'anaconda-mode)
;; (add-hook 'python-mode-hook 'eldoc-mode)
;; company anaconda integration is done in company configuration.

(message "config anaconda")
(provide 'user-init-anaconda)
;;; user-init-anaconda.el ends here
