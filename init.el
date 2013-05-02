;; (defvar user-default-config-dir "~/.emacs.d")
;; (add-to-list 'load-path user-default-config-dir)
(add-to-list 'load-path "~/.emacs.d")

;; Init packages
(require 'user-init-default)
(require 'user-init-packages)
(require 'user-init-zenburn)
(require 'user-init-auto-complete)
(require 'user-init-multiple-cursors)
(require 'user-init-web-mode)
(require 'user-init-flycheck)
(require 'user-init-jedi)
(require 'user-init-yasnippet)
(require 'user-init-python-mode)
(require 'user-init-erlang-mode)
(require 'user-init-octave-mode)

;; run local configuration after rest of the system is initialized
(add-hook 'after-init-hook
	  #'(lambda ()
	      (require 'user-init-locals)))
;;; init.el ends here
