;;; Code:
(defun user-init-append-to-env-var (variable-name value-list)
  "Append a list of values to an environment variable"
  (let* ((extra-path-str (mapconcat 'identity value-list ":"))
	 (new-path (concat (getenv variable-name) ":" extra-path-str)))
    (setenv variable-name new-path))
  (message (getenv variable-name))

  
  )
(defun user-init-set-envs ()
  "Sets environments from user user-init-paths variable"
  ;; update path
  (user-init-append-to-env-var "PATH" user-init-paths)
  (setq exec-path (append exec-path user-init-paths))
  ;; add python path
  (user-init-append-to-env-var "PYTHONPATH" user-init-python-paths)
  )

(add-hook 'after-init-hook #'user-init-set-envs)

(message "config paths")
(provide 'user-init-paths)
;;; user-init-paths.el ends here
