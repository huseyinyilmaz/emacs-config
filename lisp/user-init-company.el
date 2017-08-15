;;; user-init-company.el --- Configuration for company mode

;;; Commentary:
;;

;;; Code:

(add-hook 'after-init-hook #'(lambda()
                               (global-company-mode)
                               ;; Add company backends
                               (add-to-list 'company-backends 'company-tern)
                               (add-to-list 'company-backends 'company-anaconda)
                               (add-to-list 'company-backends 'company-flow)
                               (add-to-list 'company-backends 'company-restclient)
                               ;; Config company backends
                               (setq company-flow-modes '(js-mode js2-mode js2-jsx-mode web-mode))
                               ))



(message "config auto-complete")
(provide 'user-init-company)

;;; user-init-company.el ends here
