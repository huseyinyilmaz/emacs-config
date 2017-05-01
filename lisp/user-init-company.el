;;; user-init-company.el --- Configuration for company mode

;;; Commentary:
;;

;;; Code:

(add-hook 'after-init-hook #'(lambda()
                               (global-company-mode)
                               (add-to-list 'company-backends 'company-tern)
                               (add-to-list 'company-backends 'company-anaconda)
                               ))



(message "config auto-complete")
(provide 'user-init-company)

;;; user-init-company.el ends here
