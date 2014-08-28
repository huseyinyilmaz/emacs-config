;;; user-init-erlang-mode.el --- Configures erlang-mode

;;; Commentary:
;; 

;;; Code:
(require 'cl)
;; erlang-root-dir variable is set in user-init-config
(add-hook 'after-init-hook
	  #'(lambda ()
	      ;; if erlang root does not exists
	      ;; do not run erlang initialization
	      (if (file-exists-p erlang-root-dir)
		  ;;set load paths and start erlang mode
		  (progn
		    (add-to-list
		    'load-path
		     (car (file-expand-wildcards (concatenate 'string erlang-root-dir "/lib/tools-*/emacs"))))
		    (add-to-list
		     'exec-path
		     (concatenate 'string erlang-root-dir "/bin"))
		    (require 'erlang-start))
		;; erlang root does not exists message the situation
		(message (concatenate
			  'string
			  "Erlang root directory does not exists : "
			  erlang-root-dir)))))
;;; enable autocomplete-mode
(message "config erlang-mode")
(provide 'user-init-erlang-mode)
;;; user-init-erlang-mode.el ends here
