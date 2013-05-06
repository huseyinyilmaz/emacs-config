(add-hook 'after-init-hook
	  #'(lambda ()
	      (setq py-shell-name "ipython")
	      (require 'python-mode)))

(add-hook 'python-mode-hook #'subword-mode)

(message "config python-mode")
(provide 'user-init-python-mode)
;;; user-init-python-mode.el ends here
