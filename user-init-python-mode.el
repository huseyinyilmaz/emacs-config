(add-hook 'after-init-hook
	  #'(lambda ()
	      (defvar py-shell-name "ipython")
	      (require 'python-mode)
	      ))

(add-hook 'python-mode-hook #'subword-mode)
;; Set a line on column 79 in python mode
(add-hook 'python-mode-hook #'(lambda ()
				(defvar fci-rule-column 79)
				(fci-mode)))
(message "config python-mode")
(provide 'user-init-python-mode)
;;; user-init-python-mode.el ends here
