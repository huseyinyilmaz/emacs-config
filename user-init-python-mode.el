;; Code:
;;; configure python shell
;; (defvar  py-shell-name "ipython")
(setq py-split-windows-on-execute-p nil)
(setq py-shell-switch-buffers-on-execute-p t)

(add-hook 'after-init-hook
	  #'(lambda ()
	      (require 'python-mode)))

(add-hook 'python-mode-hook #'subword-mode)
;; Set a line on column 79 in python mode
(add-hook 'python-mode-hook #'(lambda ()
				(defvar fci-rule-column 79)
				(fci-mode)))
(message "config python-mode")
(provide 'user-init-python-mode)
;;; user-init-python-mode.el ends here
