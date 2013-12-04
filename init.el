;;; init.el --- Main emacs initialization file.


;;; Commentary:
;; 

;;; Code:
(add-to-list 'load-path "~/.emacs.d")

;; Init packages
(require 'user-init-config)
(require 'user-init-default)
(require 'user-init-packages)
;; (require 'user-init-zenburn)
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
;; run local configuration after rest of the system is initialized
(add-hook 'after-init-hook
	  #'(lambda ()
	      (require 'user-init-locals)))
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-color-mode-line-error-face ((t (:inherit flycheck-fringe-error))))
 '(flycheck-color-mode-line-info-face ((t (:inherit flycheck-fringe-info))))
 '(flycheck-color-mode-line-warning-face ((t (:inherit flycheck-fringe-warning)))))
