;;; init.el --- Main emacs initialization file.


;;; Commentary:
;;  

;;; Code:
(add-to-list 'load-path "~/.emacs.d")

;; Init packages
(require 'user-init-config)
(require 'user-init-default)
(require 'user-init-packages)
;; (require 'user-init-flyspell)
(require 'user-init-auto-complete)
(require 'user-init-multiple-cursors)
(require 'user-init-web-mode)
(require 'user-init-flycheck)
(require 'user-init-jedi)
(require 'user-init-yasnippet)
(require 'user-init-python-mode)
(require 'user-init-erlang-mode)
(require 'user-init-octave-mode)
(require 'user-init-slime)
(require 'user-init-exec-path-from-shell)
;; (require 'user-init-paths)
(require 'user-init-custom)
(require 'user-init-theme)
(require 'user-init-projectile)
(require 'user-init-development)
(require 'user-init-elisp)
(require 'user-init-git)

;; run local configuration after rest of the system is initialized
(add-hook 'after-init-hook
	  #'(lambda ()
	      (require 'user-init-locals)))
;;; init.el ends here
