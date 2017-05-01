;;; user-init-tern.el --- Tern configuration

;;; Commentary:
;;

;;; Code:

(defun user-init-setup-company-tern ()
                            (tern-mode t)
                            (setq js-indent-level 2) ; js-mode configuration for js
                            (add-to-list 'company-backends 'company-tern))

(add-hook 'js-mode-hook #'user-init-setup-company-tern)
(add-hook 'web-mode-hook #'user-init-setup-company-tern)
(add-hook 'jsx-mode-hook #'user-init-setup-company-tern)


(provide 'user-init-tern)

;;; user-init-tern.el ends here
