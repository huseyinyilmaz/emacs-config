;;; Code:
;;;;;;;;;;;;;;;;;;;;;;;;
;; Dependent packages ;;
;;;;;;;;;;;;;;;;;;;;;;;;
(defvar user-packages '(zenburn-theme
		      auto-complete
		      multiple-cursors
		      web-mode
		      jedi
		      flycheck
		      virtualenv
		      yasnippet
		      python-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Erlang root directory ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; erlang root directory that will be used
;; erlang-mode will be also used from this distrubition
(defvar erlang-root-dir "/usr/lib/erlang")

(message "load configuration")
(provide 'user-init-config)
;;; user-init-config.el ends here
