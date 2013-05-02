(add-hook 'after-init-hook
	  #'(lambda ()
	      (setq jedi:setup-keys t)
	      (add-hook 'python-mode-hook 'jedi:ac-setup)))
(message "config jedi")
(provide 'user-init-jedi)
;;; user-init-jedi.el ends here




