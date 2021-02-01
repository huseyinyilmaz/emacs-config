;;; user-init-company.el --- Configuration for company mode

;;; Commentary:
;;

;;; Code:

(add-hook 'after-init-hook #'(lambda()
                               (global-company-mode)
                               ;; Add company backends
                               (add-to-list 'company-backends 'company-anaconda)
                               (add-to-list 'company-backends 'company-flow)
                               (add-to-list 'company-backends 'company-restclient)
                               ;; Config company backends
                               (setq company-flow-modes '(js-mode js2-mode js2-jsx-mode web-mode))
                               (setq company-minimum-prefix-length 1)
                               (setq company-idle-delay 0.0)
                               ))



(message "config auto-complete")
(provide 'user-init-company)

;;; user-init-company.el ends here
