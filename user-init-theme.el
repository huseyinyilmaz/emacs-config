(add-hook 'after-init-hook
	  #'(lambda ()
	      (load-theme 'zenburn t)))

;; (add-hook 'after-init-hook #'color-theme-solarized-dark)
(message "config theme")
(provide 'user-init-theme)
;;; user-init-zenburn.el ends here
