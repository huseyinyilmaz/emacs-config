;;; user-init-terraform-mode.el --- config terraform-mode.

;;; Commentary:
;;

;;; Code:
(add-hook 'terraform-mode-hook #'terraform-format-on-save-mode)


(provide 'user-init-terraform-mode)

;;; user-init-terraform-mode.el ends here
