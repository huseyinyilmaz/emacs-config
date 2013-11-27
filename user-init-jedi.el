;;; user-init-jedi.el --- python jedi initialization.


;;; Commentary:
;;


;;; Code:

;; (add-hook 'after-init-hook
;;           #'(lambda ()
;;               (setq jedi:setup-keys t)
;;               ;; (add-hook 'python-mode-hook 'jedi:ac-setup)
;;               (add-hook 'python-mode-hook 'jedi:setup)
;;               (setq jedi:complete-on-dot t)
;;               (setq jedi:server-args
;;                     '("--virtual-env" "/Users/huseyin/.virtualenvs/coral"))
;;               ;; (setq jedi:server-command
;;               ;;             (list "python" jedi:server-script))
;;               ))

(add-hook 'python-mode-hook #'(lambda ()
				(defvar fci-rule-column 79)
				(fci-mode)))

(add-hook 'after-init-hook
	  #'(lambda ()
	      (defvar jedi:setup-keys t)
	      ;; (add-hook 'python-mode-hook 'jedi:ac-setup)
	      (defvar jedi:complete-on-dot t)
	      
	      ))

(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook #'user-init-setup-jedi-configuration)

(defun user-init-setup-jedi-configuration ()
"Configures jedi server setup according to current buffer.
Virtualenv configuration option is found by virtualenv method.
In order to find virtualenv variable we use virtualenv option
of python mode.  We also add Current project root of projectile
to python path."
(let ((arg-vals nil)
      (command-vals nil)
      (current-virtualenv-path
       (when (virtualenv-current)
	 (concat virtualenv-workon-home (virtualenv-current)))))
  
  (when current-virtualenv-path
      (setq arg-vals (append arg-vals
			     (list "--virtual-env"
				   current-virtualenv-path)))
      (setq command-vals (concat current-virtualenv-path "/bin/python"))
      (message "Project-python-path found"))

    (when (projectile-project-p)
      (setq arg-vals (append arg-vals (list "--sys-path"
					    (projectile-project-root))))
      (message "Project-root-dir found")
      )

    (message "XXXXXXXXXXXXXXXXXXXXXXXXXXX")
    (message (format "arg-vals=%s\ncurrent-virtualenv-path=%s\ncommand-vals=%s"
		     arg-vals
		     current-virtualenv-path
		     command-vals))
    (when arg-vals
      (setq jedi:server-args arg-vals))
    (when command-vals
      (setq jedi:server-command
	(list command-vals jedi:server-script))
	(message "server command set"))
    ))

(message "config jedi")
(provide 'user-init-jedi)
;;; user-init-jedi.el ends here
