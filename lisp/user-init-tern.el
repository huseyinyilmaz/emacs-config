;;; user-init-tern.el --- Tern configuration

;;; Commentary:
;;

;;; Code:

(add-hook 'js-mode-hook #'(lambda ()
                            (tern-mode t)))
(add-hook 'js-mode-hook #'(lambda ()
                            (add-to-list 'company-backends 'company-tern)))

(provide 'user-init-tern)

;;; user-init-tern.el ends here
