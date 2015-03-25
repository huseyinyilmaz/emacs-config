;;; user-init-ace-jump-mode.el --- Configuration for ace jump mode

;;; Commentary:
;;

;;; Code:

(add-hook 'after-init-hook (define-key global-map (kbd "C-c SPC") 'ace-jump-mode))

(provide 'user-init-ace-jump-mode)

;;; user-init-ace-jump-mode.el ends here
