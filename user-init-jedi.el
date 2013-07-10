(add-hook 'after-init-hook
	  #'(lambda ()
	      (setq jedi:setup-keys t)
	      ;; (add-hook 'python-mode-hook 'jedi:ac-setup)
	      (add-hook 'python-mode-hook 'jedi:setup)
	      (setq jedi:complete-on-dot t)
	      (setq jedi:server-args
		    '("--virtual-env" "/Users/huseyin/.virtualenvs/coral"))
	      ;; (setq jedi:server-command
	      ;; 	    (list "python" jedi:server-script))
	      ))
(message "config jedi")
(provide 'user-init-jedi)
;;; user-init-jedi.el ends here




