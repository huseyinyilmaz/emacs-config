;;; user-init-auto-complete.el --- Configuration for auto-complete

;;; Commentary:
;;

;;; Code:

(add-hook 'after-init-hook
          #'(lambda ()
              (require 'tramp)
              (setq tramp-default-method "ssh")))

(message "config tramp")
(provide 'user-init-tramp)

;;; user-init-tramp.el ends here
