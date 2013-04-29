(add-hook 'after-init-hook
	  #'(lambda ()
	      (require 'auto-complete-config)
	      (ac-config-default)))

;; (add-hook 'after-init-hook
;; 	  #'(lambda ()
;; 	      (require 'auto-complete)
;; 	      (global-auto-complete-mode t)))

(message "config auto-complete")
