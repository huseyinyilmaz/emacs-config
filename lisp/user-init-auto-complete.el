;;; user-init-auto-complete.el --- Configuration for auto-complete

;;; Commentary:
;; 

;;; Code:

(add-hook 'after-init-hook
	  #'(lambda ()
	      (require 'auto-complete-config)
	      (ac-config-default)))
(message "config auto-complete")
(provide 'user-init-auto-complete)

;;; user-init-auto-complete.el ends here
