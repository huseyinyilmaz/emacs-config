;;; user-init-paths.el --- Configures path for functions that is called within emacs.

;;; Commentary:
;; This functionality is done by exec-path-from-shell library.

;; (emacs-lisp-mode)
(require-package 'user-init-config)
;;; Code:
(defun user-init-append-to-env-var (variable-name value-list)
  "Append a list of values to an environment variable.
Argument VARIABLE-NAME Name of environment variable that will be added to path.
Argument VALUE-LIST List of value of variable.  That will be added to variable.  This values will be append together to form new variable."
  (let* ((extra-path-str (mapconcat 'identity value-list ":"))
	 (new-path (concat (getenv variable-name) ":" extra-path-str)))
    (setenv variable-name new-path))
  (message (getenv variable-name))

  
  )
(defun user-init-set-envs ()
  "Set environments from user `user-init-paths' variable."
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
