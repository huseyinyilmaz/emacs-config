;;; user-init-global.el --- Global configuration of installed packages

;;; Commentary:
;; Some of the packages are enabled globally.  They are enabled here.
;;; Code:

(add-hook 'after-init-hook 'global-whitespace-cleanup-mode)

(provide 'user-init-global)
;;; user-init-global.el ends here
