;;; user-init-company.el --- Configuration for company mode

;;; Commentary:
;;

;;; Code:

(add-hook 'after-init-hook 'global-company-mode)
;; (add-hook 'after-init-hook #'(lambda()
;;                                (add-to-list 'company-backends 'company-jedi)
;;                                ))


(message "config auto-complete")
(provide 'user-init-company)

;;; user-init-company.el ends here
