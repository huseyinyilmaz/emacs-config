(add-hook 'after-init-hook
	  #'(lambda ()
	      (setq jedi:setup-keys t)
	      ;; (add-hook 'python-mode-hook 'jedi:ac-setup)
	      (add-hook 'python-mode-hook 'jedi:setup)
	      (setq jedi:complete-on-dot t)))
(message "config jedi")
(provide 'user-init-jedi)
;;; user-init-jedi.el ends here




